//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/EncryptedTextContentV1.java
//

#ifndef _ImActorModelApiEncryptedTextContentV1_H_
#define _ImActorModelApiEncryptedTextContentV1_H_

@class BSBserValues;
@class BSBserWriter;

#include "J2ObjC_header.h"
#include "im/actor/model/api/EncryptedContentV1.h"

@interface ImActorModelApiEncryptedTextContentV1 : ImActorModelApiEncryptedContentV1 {
}

- (instancetype)initWithNSString:(NSString *)text;

- (instancetype)init;

- (jint)getHeader;

- (NSString *)getText;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiEncryptedTextContentV1)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiEncryptedTextContentV1)

#endif // _ImActorModelApiEncryptedTextContentV1_H_
