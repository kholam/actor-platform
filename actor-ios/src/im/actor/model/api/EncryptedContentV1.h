//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/EncryptedContentV1.java
//

#ifndef _ImActorModelApiEncryptedContentV1_H_
#define _ImActorModelApiEncryptedContentV1_H_

@class IOSByteArray;

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/bser/BserObject.h"

@interface ImActorModelApiEncryptedContentV1 : BSBserObject {
}

+ (ImActorModelApiEncryptedContentV1 *)fromBytesWithInt:(jint)key
                                          withByteArray:(IOSByteArray *)content;

- (jint)getHeader;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiEncryptedContentV1)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ImActorModelApiEncryptedContentV1 *ImActorModelApiEncryptedContentV1_fromBytesWithInt_withByteArray_(jint key, IOSByteArray *content);
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiEncryptedContentV1)

#endif // _ImActorModelApiEncryptedContentV1_H_
