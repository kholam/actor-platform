//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/EncryptedDocumentV1Ex.java
//

#ifndef _ImActorModelApiEncryptedDocumentV1Ex_H_
#define _ImActorModelApiEncryptedDocumentV1Ex_H_

@class IOSByteArray;

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/bser/BserObject.h"

@interface ImActorModelApiEncryptedDocumentV1Ex : BSBserObject {
}

+ (ImActorModelApiEncryptedDocumentV1Ex *)fromBytesWithInt:(jint)key
                                             withByteArray:(IOSByteArray *)content;

- (jint)getHeader;

- (IOSByteArray *)buildContainer;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiEncryptedDocumentV1Ex)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ImActorModelApiEncryptedDocumentV1Ex *ImActorModelApiEncryptedDocumentV1Ex_fromBytesWithInt_withByteArray_(jint key, IOSByteArray *content);
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiEncryptedDocumentV1Ex)

#endif // _ImActorModelApiEncryptedDocumentV1Ex_H_