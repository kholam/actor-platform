package im.actor.model.api.rpc;
/*
 *  Generated by the Actor API Scheme generator.  DO NOT EDIT!
 */

import im.actor.model.droidkit.bser.Bser;
import im.actor.model.droidkit.bser.BserValues;
import im.actor.model.droidkit.bser.BserWriter;
import java.io.IOException;
import im.actor.model.network.parser.*;

public class RequestUnregisterPush extends Request<ResponseVoid> {

    public static final int HEADER = 0x34;
    public static RequestUnregisterPush fromBytes(byte[] data) throws IOException {
        return Bser.parse(new RequestUnregisterPush(), data);
    }


    public RequestUnregisterPush() {

    }

    @Override
    public void parse(BserValues values) throws IOException {
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
    }

    @Override
    public int getHeaderKey() {
        return HEADER;
    }
}