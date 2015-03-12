//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/network/mtp/entity/ProtoSerializer.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/DataInput.h"
#include "im/actor/model/network/mtp/entity/Container.h"
#include "im/actor/model/network/mtp/entity/Drop.h"
#include "im/actor/model/network/mtp/entity/MTPush.h"
#include "im/actor/model/network/mtp/entity/MTRpcRequest.h"
#include "im/actor/model/network/mtp/entity/MTRpcResponse.h"
#include "im/actor/model/network/mtp/entity/MessageAck.h"
#include "im/actor/model/network/mtp/entity/NewSessionCreated.h"
#include "im/actor/model/network/mtp/entity/Ping.h"
#include "im/actor/model/network/mtp/entity/Pong.h"
#include "im/actor/model/network/mtp/entity/ProtoSerializer.h"
#include "im/actor/model/network/mtp/entity/ProtoStruct.h"
#include "im/actor/model/network/mtp/entity/RequestResend.h"
#include "im/actor/model/network/mtp/entity/UnsentMessage.h"
#include "im/actor/model/network/mtp/entity/UnsentResponse.h"
#include "im/actor/model/network/mtp/entity/rpc/Push.h"
#include "im/actor/model/network/mtp/entity/rpc/RpcError.h"
#include "im/actor/model/network/mtp/entity/rpc/RpcFloodWait.h"
#include "im/actor/model/network/mtp/entity/rpc/RpcInternalError.h"
#include "im/actor/model/network/mtp/entity/rpc/RpcOk.h"
#include "im/actor/model/network/mtp/entity/rpc/RpcRequest.h"
#include "java/io/IOException.h"

@implementation MTProtoSerializer

+ (MTProtoStruct *)readMessagePayloadWithByteArray:(IOSByteArray *)bs {
  return MTProtoSerializer_readMessagePayloadWithByteArray_(bs);
}

+ (MTProtoStruct *)readMessagePayloadWithBSDataInput:(BSDataInput *)bs {
  return MTProtoSerializer_readMessagePayloadWithBSDataInput_(bs);
}

+ (MTProtoStruct *)readRpcResponsePayloadWithByteArray:(IOSByteArray *)data {
  return MTProtoSerializer_readRpcResponsePayloadWithByteArray_(data);
}

+ (MTProtoStruct *)readRpcRequestPayloadWithBSDataInput:(BSDataInput *)bs {
  return MTProtoSerializer_readRpcRequestPayloadWithBSDataInput_(bs);
}

+ (MTPush *)readUpdateWithByteArray:(IOSByteArray *)bs {
  return MTProtoSerializer_readUpdateWithByteArray_(bs);
}

+ (MTPush *)readUpdateWithBSDataInput:(BSDataInput *)bs {
  return MTProtoSerializer_readUpdateWithBSDataInput_(bs);
}

- (instancetype)init {
  return [super init];
}

@end

MTProtoStruct *MTProtoSerializer_readMessagePayloadWithByteArray_(IOSByteArray *bs) {
  MTProtoSerializer_init();
  return MTProtoSerializer_readMessagePayloadWithBSDataInput_([[BSDataInput alloc] initWithByteArray:bs withInt:0 withInt:((IOSByteArray *) nil_chk(bs))->size_]);
}

MTProtoStruct *MTProtoSerializer_readMessagePayloadWithBSDataInput_(BSDataInput *bs) {
  MTProtoSerializer_init();
  jint header = [((BSDataInput *) nil_chk(bs)) readByte];
  switch (header) {
    case MTPing_HEADER:
    return [[MTPing alloc] initWithBSDataInput:bs];
    case MTPong_HEADER:
    return [[MTPong alloc] initWithBSDataInput:bs];
    case MTDrop_HEADER:
    return [[MTDrop alloc] initWithBSDataInput:bs];
    case MTContainer_HEADER:
    return [[MTContainer alloc] initWithBSDataInput:bs];
    case MTMTRpcRequest_HEADER:
    return [[MTMTRpcRequest alloc] initWithBSDataInput:bs];
    case MTMTRpcResponse_HEADER:
    return [[MTMTRpcResponse alloc] initWithBSDataInput:bs];
    case MTMessageAck_HEADER:
    return [[MTMessageAck alloc] initWithBSDataInput:bs];
    case MTNewSessionCreated_HEADER:
    return [[MTNewSessionCreated alloc] initWithBSDataInput:bs];
    case MTMTPush_HEADER:
    return [[MTMTPush alloc] initWithBSDataInput:bs];
    case MTUnsentMessage_HEADER:
    return [[MTUnsentMessage alloc] initWithBSDataInput:bs];
    case MTUnsentResponse_HEADER:
    return [[MTUnsentResponse alloc] initWithBSDataInput:bs];
    case MTRequestResend_HEADER:
    return [[MTUnsentResponse alloc] initWithBSDataInput:bs];
  }
  @throw [[JavaIoIOException alloc] initWithNSString:JreStrcat("$I", @"Unable to read proto object with header #", header)];
}

MTProtoStruct *MTProtoSerializer_readRpcResponsePayloadWithByteArray_(IOSByteArray *data) {
  MTProtoSerializer_init();
  BSDataInput *bs = [[BSDataInput alloc] initWithByteArray:data withInt:0 withInt:((IOSByteArray *) nil_chk(data))->size_];
  jint header = [bs readByte];
  switch (header) {
    case MTRpcOk_HEADER:
    return [[MTRpcOk alloc] initWithBSDataInput:bs];
    case MTRpcError_HEADER:
    return [[MTRpcError alloc] initWithBSDataInput:bs];
    case MTRpcFloodWait_HEADER:
    return [[MTRpcFloodWait alloc] initWithBSDataInput:bs];
    case MTRpcInternalError_HEADER:
    return [[MTRpcInternalError alloc] initWithBSDataInput:bs];
  }
  @throw [[JavaIoIOException alloc] initWithNSString:@"Unable to read proto object"];
}

MTProtoStruct *MTProtoSerializer_readRpcRequestPayloadWithBSDataInput_(BSDataInput *bs) {
  MTProtoSerializer_init();
  jint header = [((BSDataInput *) nil_chk(bs)) readByte];
  switch (header) {
    case MTRpcRequest_HEADER:
    return [[MTRpcRequest alloc] initWithBSDataInput:bs];
  }
  @throw [[JavaIoIOException alloc] initWithNSString:JreStrcat("$I", @"Unable to read proto object with header #", header)];
}

MTPush *MTProtoSerializer_readUpdateWithByteArray_(IOSByteArray *bs) {
  MTProtoSerializer_init();
  return MTProtoSerializer_readUpdateWithBSDataInput_([[BSDataInput alloc] initWithByteArray:bs withInt:0 withInt:((IOSByteArray *) nil_chk(bs))->size_]);
}

MTPush *MTProtoSerializer_readUpdateWithBSDataInput_(BSDataInput *bs) {
  MTProtoSerializer_init();
  return [[MTPush alloc] initWithBSDataInput:bs];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(MTProtoSerializer)
