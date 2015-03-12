//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/network/mtp/entity/rpc/Push.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/DataInput.h"
#include "im/actor/model/droidkit/bser/DataOutput.h"
#include "im/actor/model/network/mtp/entity/rpc/Push.h"
#include "java/io/IOException.h"

@implementation MTPush

- (instancetype)initWithBSDataInput:(BSDataInput *)stream {
  return [super initWithBSDataInput:stream];
}

- (instancetype)initWithInt:(jint)updateType
              withByteArray:(IOSByteArray *)body {
  if (self = [super init]) {
    self->updateType_ = updateType;
    self->body_ = body;
  }
  return self;
}

- (jbyte)getHeader {
  return 0;
}

- (void)writeBodyWithBSDataOutput:(BSDataOutput *)bs {
  [((BSDataOutput *) nil_chk(bs)) writeIntWithInt:updateType_];
  [bs writeProtoBytesWithByteArray:body_ withInt:0 withInt:((IOSByteArray *) nil_chk(body_))->size_];
}

- (void)readBodyWithBSDataInput:(BSDataInput *)bs {
  updateType_ = [((BSDataInput *) nil_chk(bs)) readInt];
  body_ = [bs readProtoBytes];
}

- (NSString *)description {
  return JreStrcat("$IC", @"Update[", updateType_, ']');
}

- (void)copyAllFieldsTo:(MTPush *)other {
  [super copyAllFieldsTo:other];
  other->updateType_ = updateType_;
  other->body_ = body_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(MTPush)
