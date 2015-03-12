//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/network/mtp/entity/rpc/RpcError.java
//

#ifndef _MTRpcError_H_
#define _MTRpcError_H_

@class BSDataInput;
@class BSDataOutput;
@class IOSByteArray;

#include "J2ObjC_header.h"
#include "im/actor/model/network/mtp/entity/ProtoStruct.h"

#define MTRpcError_HEADER 2

@interface MTRpcError : MTProtoStruct {
 @public
  jint errorCode_;
  NSString *errorTag_;
  NSString *userMessage_;
  jboolean canTryAgain_;
  IOSByteArray *relatedData_;
}

- (instancetype)initWithBSDataInput:(BSDataInput *)stream;

- (instancetype)initWithInt:(jint)errorCode
               withNSString:(NSString *)errorTag
               withNSString:(NSString *)userMessage
                withBoolean:(jboolean)canTryAgain
              withByteArray:(IOSByteArray *)relatedData;

- (jbyte)getHeader;

- (void)writeBodyWithBSDataOutput:(BSDataOutput *)bs;

- (void)readBodyWithBSDataInput:(BSDataInput *)bs;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(MTRpcError)

J2OBJC_FIELD_SETTER(MTRpcError, errorTag_, NSString *)
J2OBJC_FIELD_SETTER(MTRpcError, userMessage_, NSString *)
J2OBJC_FIELD_SETTER(MTRpcError, relatedData_, IOSByteArray *)

CF_EXTERN_C_BEGIN

J2OBJC_STATIC_FIELD_GETTER(MTRpcError, HEADER, jbyte)
CF_EXTERN_C_END

typedef MTRpcError ImActorModelNetworkMtpEntityRpcRpcError;

J2OBJC_TYPE_LITERAL_HEADER(MTRpcError)

#endif // _MTRpcError_H_
