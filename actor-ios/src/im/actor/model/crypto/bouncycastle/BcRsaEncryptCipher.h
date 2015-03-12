//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/crypto/bouncycastle/BcRsaEncryptCipher.java
//

#ifndef _ImActorModelCryptoBouncycastleBcRsaEncryptCipher_H_
#define _ImActorModelCryptoBouncycastleBcRsaEncryptCipher_H_

@class IOSByteArray;
@protocol OrgBouncycastleCryptoAsymmetricBlockCipher;

#include "J2ObjC_header.h"
#include "im/actor/model/crypto/RsaEncryptCipher.h"

@interface ImActorModelCryptoBouncycastleBcRsaEncryptCipher : NSObject < ImActorModelCryptoRsaEncryptCipher > {
}

- (instancetype)initWithByteArray:(IOSByteArray *)publicKey;

- (IOSByteArray *)encryptWithByteArray:(IOSByteArray *)sourceData;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelCryptoBouncycastleBcRsaEncryptCipher)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelCryptoBouncycastleBcRsaEncryptCipher)

#endif // _ImActorModelCryptoBouncycastleBcRsaEncryptCipher_H_
