package im.actor.model.api.updates;
/*
 *  Generated by the Actor API Scheme generator.  DO NOT EDIT!
 */

import im.actor.model.droidkit.bser.Bser;
import im.actor.model.droidkit.bser.BserParser;
import im.actor.model.droidkit.bser.BserObject;
import im.actor.model.droidkit.bser.BserValues;
import im.actor.model.droidkit.bser.BserWriter;
import im.actor.model.droidkit.bser.DataInput;
import static im.actor.model.droidkit.bser.Utils.*;
import java.io.IOException;
import im.actor.model.network.parser.*;
import java.util.List;
import java.util.ArrayList;
import im.actor.model.api.*;

public class UpdateGroupMembersUpdate extends Update {

    public static final int HEADER = 0x2c;
    public static UpdateGroupMembersUpdate fromBytes(byte[] data) throws IOException {
        return Bser.parse(new UpdateGroupMembersUpdate(), data);
    }

    private int groupId;
    private List<Member> members;

    public UpdateGroupMembersUpdate(int groupId, List<Member> members) {
        this.groupId = groupId;
        this.members = members;
    }

    public UpdateGroupMembersUpdate() {

    }

    public int getGroupId() {
        return this.groupId;
    }

    public List<Member> getMembers() {
        return this.members;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        this.groupId = values.getInt(1);
        List<Member> _members = new ArrayList<Member>();
        for (int i = 0; i < values.getRepeatedCount(2); i ++) {
            _members.add(new Member());
        }
        this.members = values.getRepeatedObj(2, _members);
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        writer.writeInt(1, this.groupId);
        writer.writeRepeatedObj(2, this.members);
    }

    @Override
    public String toString() {
        String res = "update GroupMembersUpdate{";
        res += "groupId=" + this.groupId;
        res += ", members=" + this.members;
        res += "}";
        return res;
    }

    @Override
    public int getHeaderKey() {
        return HEADER;
    }
}
