//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/crypto/params/ECKeyGenerationParameters.java
//

#include "J2ObjC_source.h"
#include "java/math/BigInteger.h"
#include "java/security/SecureRandom.h"
#include "org/bouncycastle/crypto/params/ECDomainParameters.h"
#include "org/bouncycastle/crypto/params/ECKeyGenerationParameters.h"

@interface OrgBouncycastleCryptoParamsECKeyGenerationParameters () {
 @public
  OrgBouncycastleCryptoParamsECDomainParameters *domainParams_;
}
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoParamsECKeyGenerationParameters, domainParams_, OrgBouncycastleCryptoParamsECDomainParameters *)

@implementation OrgBouncycastleCryptoParamsECKeyGenerationParameters

- (instancetype)initWithOrgBouncycastleCryptoParamsECDomainParameters:(OrgBouncycastleCryptoParamsECDomainParameters *)domainParams
                                         withJavaSecuritySecureRandom:(JavaSecuritySecureRandom *)random {
  if (self = [super initWithJavaSecuritySecureRandom:random withInt:[((JavaMathBigInteger *) nil_chk([((OrgBouncycastleCryptoParamsECDomainParameters *) nil_chk(domainParams)) getN])) bitLength]]) {
    self->domainParams_ = domainParams;
  }
  return self;
}

- (OrgBouncycastleCryptoParamsECDomainParameters *)getDomainParameters {
  return domainParams_;
}

- (void)copyAllFieldsTo:(OrgBouncycastleCryptoParamsECKeyGenerationParameters *)other {
  [super copyAllFieldsTo:other];
  other->domainParams_ = domainParams_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleCryptoParamsECKeyGenerationParameters)
