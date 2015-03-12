//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/crypto/params/CramerShoupParameters.java
//

#include "J2ObjC_source.h"
#include "java/math/BigInteger.h"
#include "org/bouncycastle/crypto/Digest.h"
#include "org/bouncycastle/crypto/params/CramerShoupParameters.h"
#include "org/bouncycastle/crypto/params/DSAParameters.h"

@interface OrgBouncycastleCryptoParamsCramerShoupParameters () {
 @public
  JavaMathBigInteger *p_;
  JavaMathBigInteger *g1_, *g2_;
  id<OrgBouncycastleCryptoDigest> H_;
}
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoParamsCramerShoupParameters, p_, JavaMathBigInteger *)
J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoParamsCramerShoupParameters, g1_, JavaMathBigInteger *)
J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoParamsCramerShoupParameters, g2_, JavaMathBigInteger *)
J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoParamsCramerShoupParameters, H_, id<OrgBouncycastleCryptoDigest>)

@implementation OrgBouncycastleCryptoParamsCramerShoupParameters

- (instancetype)initWithJavaMathBigInteger:(JavaMathBigInteger *)p
                    withJavaMathBigInteger:(JavaMathBigInteger *)g1
                    withJavaMathBigInteger:(JavaMathBigInteger *)g2
           withOrgBouncycastleCryptoDigest:(id<OrgBouncycastleCryptoDigest>)H {
  if (self = [super init]) {
    self->p_ = p;
    self->g1_ = g1;
    self->g2_ = g2;
    self->H_ = H;
  }
  return self;
}

- (jboolean)isEqual:(id)obj {
  if (!([obj isKindOfClass:[OrgBouncycastleCryptoParamsDSAParameters class]])) {
    return NO;
  }
  OrgBouncycastleCryptoParamsCramerShoupParameters *pm = (OrgBouncycastleCryptoParamsCramerShoupParameters *) check_class_cast(obj, [OrgBouncycastleCryptoParamsCramerShoupParameters class]);
  return ([((JavaMathBigInteger *) nil_chk([((OrgBouncycastleCryptoParamsCramerShoupParameters *) nil_chk(pm)) getP])) isEqual:p_] && [((JavaMathBigInteger *) nil_chk([pm getG1])) isEqual:g1_] && [((JavaMathBigInteger *) nil_chk([pm getG2])) isEqual:g2_]);
}

- (NSUInteger)hash {
  return ((jint) [((JavaMathBigInteger *) nil_chk([self getP])) hash]) ^ ((jint) [((JavaMathBigInteger *) nil_chk([self getG1])) hash]) ^ ((jint) [((JavaMathBigInteger *) nil_chk([self getG2])) hash]);
}

- (JavaMathBigInteger *)getG1 {
  return g1_;
}

- (JavaMathBigInteger *)getG2 {
  return g2_;
}

- (JavaMathBigInteger *)getP {
  return p_;
}

- (id<OrgBouncycastleCryptoDigest>)getH {
  [((id<OrgBouncycastleCryptoDigest>) nil_chk(H_)) reset];
  return H_;
}

- (void)copyAllFieldsTo:(OrgBouncycastleCryptoParamsCramerShoupParameters *)other {
  [super copyAllFieldsTo:other];
  other->p_ = p_;
  other->g1_ = g1_;
  other->g2_ = g2_;
  other->H_ = H_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleCryptoParamsCramerShoupParameters)
