//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/crypto/params/AsymmetricKeyParameter.java
//

#ifndef _OrgBouncycastleCryptoParamsAsymmetricKeyParameter_H_
#define _OrgBouncycastleCryptoParamsAsymmetricKeyParameter_H_

#include "J2ObjC_header.h"
#include "org/bouncycastle/crypto/CipherParameters.h"

@interface OrgBouncycastleCryptoParamsAsymmetricKeyParameter : NSObject < OrgBouncycastleCryptoCipherParameters > {
 @public
  jboolean privateKey_;
}

- (instancetype)initWithBoolean:(jboolean)privateKey;

- (jboolean)isPrivate;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleCryptoParamsAsymmetricKeyParameter)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleCryptoParamsAsymmetricKeyParameter)

#endif // _OrgBouncycastleCryptoParamsAsymmetricKeyParameter_H_
