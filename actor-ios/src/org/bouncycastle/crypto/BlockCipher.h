//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/crypto/BlockCipher.java
//

#ifndef _OrgBouncycastleCryptoBlockCipher_H_
#define _OrgBouncycastleCryptoBlockCipher_H_

@class IOSByteArray;
@protocol OrgBouncycastleCryptoCipherParameters;

#include "J2ObjC_header.h"

@protocol OrgBouncycastleCryptoBlockCipher < NSObject, JavaObject >

- (void)init__WithBoolean:(jboolean)forEncryption
withOrgBouncycastleCryptoCipherParameters:(id<OrgBouncycastleCryptoCipherParameters>)params OBJC_METHOD_FAMILY_NONE;

- (NSString *)getAlgorithmName;

- (jint)getBlockSize;

- (jint)processBlockWithByteArray:(IOSByteArray *)inArg
                          withInt:(jint)inOff
                    withByteArray:(IOSByteArray *)outArg
                          withInt:(jint)outOff;

- (void)reset;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleCryptoBlockCipher)

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleCryptoBlockCipher)

#endif // _OrgBouncycastleCryptoBlockCipher_H_
