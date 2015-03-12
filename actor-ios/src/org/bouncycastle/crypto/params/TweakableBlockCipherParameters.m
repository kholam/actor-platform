//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/crypto/params/TweakableBlockCipherParameters.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/bouncycastle/crypto/params/KeyParameter.h"
#include "org/bouncycastle/crypto/params/TweakableBlockCipherParameters.h"
#include "org/bouncycastle/util/Arrays.h"

@interface OrgBouncycastleCryptoParamsTweakableBlockCipherParameters () {
 @public
  IOSByteArray *tweak_;
  OrgBouncycastleCryptoParamsKeyParameter *key_;
}
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoParamsTweakableBlockCipherParameters, tweak_, IOSByteArray *)
J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoParamsTweakableBlockCipherParameters, key_, OrgBouncycastleCryptoParamsKeyParameter *)

@implementation OrgBouncycastleCryptoParamsTweakableBlockCipherParameters

- (instancetype)initWithOrgBouncycastleCryptoParamsKeyParameter:(OrgBouncycastleCryptoParamsKeyParameter *)key
                                                  withByteArray:(IOSByteArray *)tweak {
  if (self = [super init]) {
    self->key_ = key;
    self->tweak_ = OrgBouncycastleUtilArrays_cloneWithByteArray_(tweak);
  }
  return self;
}

- (OrgBouncycastleCryptoParamsKeyParameter *)getKey {
  return key_;
}

- (IOSByteArray *)getTweak {
  return tweak_;
}

- (void)copyAllFieldsTo:(OrgBouncycastleCryptoParamsTweakableBlockCipherParameters *)other {
  [super copyAllFieldsTo:other];
  other->tweak_ = tweak_;
  other->key_ = key_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleCryptoParamsTweakableBlockCipherParameters)
