//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/crypto/params/DSAParameters.java
//

#include "J2ObjC_source.h"
#include "java/math/BigInteger.h"
#include "org/bouncycastle/crypto/params/DSAParameters.h"
#include "org/bouncycastle/crypto/params/DSAValidationParameters.h"

@interface OrgBouncycastleCryptoParamsDSAParameters () {
 @public
  JavaMathBigInteger *g_;
  JavaMathBigInteger *q_;
  JavaMathBigInteger *p_;
  OrgBouncycastleCryptoParamsDSAValidationParameters *validation_;
}
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoParamsDSAParameters, g_, JavaMathBigInteger *)
J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoParamsDSAParameters, q_, JavaMathBigInteger *)
J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoParamsDSAParameters, p_, JavaMathBigInteger *)
J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoParamsDSAParameters, validation_, OrgBouncycastleCryptoParamsDSAValidationParameters *)

@implementation OrgBouncycastleCryptoParamsDSAParameters

- (instancetype)initWithJavaMathBigInteger:(JavaMathBigInteger *)p
                    withJavaMathBigInteger:(JavaMathBigInteger *)q
                    withJavaMathBigInteger:(JavaMathBigInteger *)g {
  if (self = [super init]) {
    self->g_ = g;
    self->p_ = p;
    self->q_ = q;
  }
  return self;
}

- (instancetype)initWithJavaMathBigInteger:(JavaMathBigInteger *)p
                    withJavaMathBigInteger:(JavaMathBigInteger *)q
                    withJavaMathBigInteger:(JavaMathBigInteger *)g
withOrgBouncycastleCryptoParamsDSAValidationParameters:(OrgBouncycastleCryptoParamsDSAValidationParameters *)params {
  if (self = [super init]) {
    self->g_ = g;
    self->p_ = p;
    self->q_ = q;
    self->validation_ = params;
  }
  return self;
}

- (JavaMathBigInteger *)getP {
  return p_;
}

- (JavaMathBigInteger *)getQ {
  return q_;
}

- (JavaMathBigInteger *)getG {
  return g_;
}

- (OrgBouncycastleCryptoParamsDSAValidationParameters *)getValidationParameters {
  return validation_;
}

- (jboolean)isEqual:(id)obj {
  if (!([obj isKindOfClass:[OrgBouncycastleCryptoParamsDSAParameters class]])) {
    return NO;
  }
  OrgBouncycastleCryptoParamsDSAParameters *pm = (OrgBouncycastleCryptoParamsDSAParameters *) check_class_cast(obj, [OrgBouncycastleCryptoParamsDSAParameters class]);
  return ([((JavaMathBigInteger *) nil_chk([((OrgBouncycastleCryptoParamsDSAParameters *) nil_chk(pm)) getP])) isEqual:p_] && [((JavaMathBigInteger *) nil_chk([pm getQ])) isEqual:q_] && [((JavaMathBigInteger *) nil_chk([pm getG])) isEqual:g_]);
}

- (NSUInteger)hash {
  return ((jint) [((JavaMathBigInteger *) nil_chk([self getP])) hash]) ^ ((jint) [((JavaMathBigInteger *) nil_chk([self getQ])) hash]) ^ ((jint) [((JavaMathBigInteger *) nil_chk([self getG])) hash]);
}

- (void)copyAllFieldsTo:(OrgBouncycastleCryptoParamsDSAParameters *)other {
  [super copyAllFieldsTo:other];
  other->g_ = g_;
  other->q_ = q_;
  other->p_ = p_;
  other->validation_ = validation_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleCryptoParamsDSAParameters)