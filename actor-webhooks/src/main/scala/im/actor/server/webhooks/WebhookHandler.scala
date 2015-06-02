package im.actor.server.webhooks

import scala.concurrent.ExecutionContext
import scala.concurrent.forkjoin.ThreadLocalRandom
import scala.concurrent.duration._

import akka.util.Timeout
import org.joda.time.DateTime
import slick.dbio.DBIO
import slick.driver.PostgresDriver.api._

import im.actor.api.rpc.messaging.{ Message, TextMessage }
import im.actor.server.peermanagers.{ GroupPeerManagerRegion, GroupPeerManager }
import im.actor.server.persist

class WebhookHandler()(implicit db: Database, ec: ExecutionContext, groupPeerManagerRegion: GroupPeerManagerRegion) {

  implicit val timeout: Timeout = Timeout(5.seconds)

  def send(content: Content, token: String) = {
    val message: Message = content match {
      case Text(text)    ⇒ TextMessage(text, Vector.empty, None)
      case Document(url) ⇒ throw new NotImplementedError()
      case Image(url)    ⇒ throw new NotImplementedError()
    }

    db.run {
      for {
        optBot ← persist.GroupBot.findByToken(token)
        userAuth ← optBot.map { bot ⇒
          for {
            optGroup ← persist.Group.find(bot.groupId).headOption
            authIds ← persist.AuthId.findByUserId(bot.userId)

            authId ← (optGroup, authIds) match {
              case (None, _) ⇒ DBIO.successful(None)
              case (Some(group), auth +: _) ⇒
                DBIO.from(GroupPeerManager.sendMessage(group.id, bot.userId, auth.id, ThreadLocalRandom.current().nextLong(), DateTime.now, message))
              case (Some(group), Seq()) ⇒
                val rng = ThreadLocalRandom.current()
                val authId = rng.nextLong()
                for {
                  _ ← persist.AuthId.create(authId, Some(bot.userId), None)
                  _ ← DBIO.from(GroupPeerManager.sendMessage(group.id, bot.userId, authId, rng.nextLong(), DateTime.now, message))
                } yield ()
            }
          } yield ()
        }.getOrElse(DBIO.successful(None))
      } yield ()
    }
  }

}
