//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/crypto/params/ElGamalPrivateKeyParameters.java
//

#ifndef _OrgBouncycastleCryptoParamsElGamalPrivateKeyParameters_H_
#define _OrgBouncycastleCryptoParamsElGamalPrivateKeyParameters_H_

@class JavaMathBigInteger;
@class OrgBouncycastleCryptoParamsElGamalParameters;

#include "J2ObjC_header.h"
#include "org/bouncycastle/crypto/params/ElGamalKeyParameters.h"

@interface OrgBouncycastleCryptoParamsElGamalPrivateKeyParameters : OrgBouncycastleCryptoParamsElGamalKeyParameters {
}

- (instancetype)initWithJavaMathBigInteger:(JavaMathBigInteger *)x
withOrgBouncycastleCryptoParamsElGamalParameters:(OrgBouncycastleCryptoParamsElGamalParameters *)params;

- (JavaMathBigInteger *)getX;

- (jboolean)isEqual:(id)obj;

- (NSUInteger)hash;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleCryptoParamsElGamalPrivateKeyParameters)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleCryptoParamsElGamalPrivateKeyParameters)

#endif // _OrgBouncycastleCryptoParamsElGamalPrivateKeyParameters_H_
