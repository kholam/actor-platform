package im.actor.model.api.rpc;
/*
 *  Generated by the Actor API Scheme generator.  DO NOT EDIT!
 */

import im.actor.model.droidkit.bser.Bser;
import im.actor.model.droidkit.bser.BserValues;
import im.actor.model.droidkit.bser.BserWriter;
import java.io.IOException;
import im.actor.model.network.parser.*;

public class ResponseGetFile extends Response {

    public static final int HEADER = 0x11;
    public static ResponseGetFile fromBytes(byte[] data) throws IOException {
        return Bser.parse(new ResponseGetFile(), data);
    }

    private byte[] payload;

    public ResponseGetFile(byte[] payload) {
        this.payload = payload;
    }

    public ResponseGetFile() {

    }

    public byte[] getPayload() {
        return this.payload;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        this.payload = values.getBytes(1);
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        if (this.payload == null) {
            throw new IOException();
        }
        writer.writeBytes(1, this.payload);
    }

    @Override
    public int getHeaderKey() {
        return HEADER;
    }
}