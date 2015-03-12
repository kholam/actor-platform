//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/crypto/params/GOST3410PublicKeyParameters.java
//

#include "J2ObjC_source.h"
#include "java/math/BigInteger.h"
#include "org/bouncycastle/crypto/params/GOST3410Parameters.h"
#include "org/bouncycastle/crypto/params/GOST3410PublicKeyParameters.h"

@interface OrgBouncycastleCryptoParamsGOST3410PublicKeyParameters () {
 @public
  JavaMathBigInteger *y_;
}
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoParamsGOST3410PublicKeyParameters, y_, JavaMathBigInteger *)

@implementation OrgBouncycastleCryptoParamsGOST3410PublicKeyParameters

- (instancetype)initWithJavaMathBigInteger:(JavaMathBigInteger *)y
withOrgBouncycastleCryptoParamsGOST3410Parameters:(OrgBouncycastleCryptoParamsGOST3410Parameters *)params {
  if (self = [super initWithBoolean:NO withOrgBouncycastleCryptoParamsGOST3410Parameters:params]) {
    self->y_ = y;
  }
  return self;
}

- (JavaMathBigInteger *)getY {
  return y_;
}

- (void)copyAllFieldsTo:(OrgBouncycastleCryptoParamsGOST3410PublicKeyParameters *)other {
  [super copyAllFieldsTo:other];
  other->y_ = y_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleCryptoParamsGOST3410PublicKeyParameters)
