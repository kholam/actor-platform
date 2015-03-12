//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/crypto/params/KDFFeedbackParameters.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/bouncycastle/crypto/params/KDFFeedbackParameters.h"
#include "org/bouncycastle/util/Arrays.h"

@interface OrgBouncycastleCryptoParamsKDFFeedbackParameters () {
 @public
  IOSByteArray *ki_;
  IOSByteArray *iv_;
  jboolean useCounter__;
  jint r_;
  IOSByteArray *fixedInputData_;
}
- (instancetype)initWithByteArray:(IOSByteArray *)ki
                    withByteArray:(IOSByteArray *)iv
                    withByteArray:(IOSByteArray *)fixedInputData
                          withInt:(jint)r
                      withBoolean:(jboolean)useCounter;
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoParamsKDFFeedbackParameters, ki_, IOSByteArray *)
J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoParamsKDFFeedbackParameters, iv_, IOSByteArray *)
J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoParamsKDFFeedbackParameters, fixedInputData_, IOSByteArray *)

@implementation OrgBouncycastleCryptoParamsKDFFeedbackParameters

- (instancetype)initWithByteArray:(IOSByteArray *)ki
                    withByteArray:(IOSByteArray *)iv
                    withByteArray:(IOSByteArray *)fixedInputData
                          withInt:(jint)r
                      withBoolean:(jboolean)useCounter {
  if (self = [super init]) {
    if (ki == nil) {
      @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"A KDF requires Ki (a seed) as input"];
    }
    self->ki_ = OrgBouncycastleUtilArrays_cloneWithByteArray_(ki);
    if (fixedInputData == nil) {
      self->fixedInputData_ = [IOSByteArray newArrayWithLength:0];
    }
    else {
      self->fixedInputData_ = OrgBouncycastleUtilArrays_cloneWithByteArray_(fixedInputData);
    }
    self->r_ = r;
    if (iv == nil) {
      self->iv_ = [IOSByteArray newArrayWithLength:0];
    }
    else {
      self->iv_ = OrgBouncycastleUtilArrays_cloneWithByteArray_(iv);
    }
    self->useCounter__ = useCounter;
  }
  return self;
}

+ (OrgBouncycastleCryptoParamsKDFFeedbackParameters *)createWithCounterWithByteArray:(IOSByteArray *)ki
                                                                       withByteArray:(IOSByteArray *)iv
                                                                       withByteArray:(IOSByteArray *)fixedInputData
                                                                             withInt:(jint)r {
  return OrgBouncycastleCryptoParamsKDFFeedbackParameters_createWithCounterWithByteArray_withByteArray_withByteArray_withInt_(ki, iv, fixedInputData, r);
}

+ (OrgBouncycastleCryptoParamsKDFFeedbackParameters *)createWithoutCounterWithByteArray:(IOSByteArray *)ki
                                                                          withByteArray:(IOSByteArray *)iv
                                                                          withByteArray:(IOSByteArray *)fixedInputData {
  return OrgBouncycastleCryptoParamsKDFFeedbackParameters_createWithoutCounterWithByteArray_withByteArray_withByteArray_(ki, iv, fixedInputData);
}

- (IOSByteArray *)getKI {
  return ki_;
}

- (IOSByteArray *)getIV {
  return iv_;
}

- (jboolean)useCounter {
  return useCounter__;
}

- (jint)getR {
  return r_;
}

- (IOSByteArray *)getFixedInputData {
  return OrgBouncycastleUtilArrays_cloneWithByteArray_(fixedInputData_);
}

- (void)copyAllFieldsTo:(OrgBouncycastleCryptoParamsKDFFeedbackParameters *)other {
  [super copyAllFieldsTo:other];
  other->ki_ = ki_;
  other->iv_ = iv_;
  other->useCounter__ = useCounter__;
  other->r_ = r_;
  other->fixedInputData_ = fixedInputData_;
}

@end

OrgBouncycastleCryptoParamsKDFFeedbackParameters *OrgBouncycastleCryptoParamsKDFFeedbackParameters_createWithCounterWithByteArray_withByteArray_withByteArray_withInt_(IOSByteArray *ki, IOSByteArray *iv, IOSByteArray *fixedInputData, jint r) {
  OrgBouncycastleCryptoParamsKDFFeedbackParameters_init();
  if (r != 8 && r != 16 && r != 24 && r != 32) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"Length of counter should be 8, 16, 24 or 32"];
  }
  return [[OrgBouncycastleCryptoParamsKDFFeedbackParameters alloc] initWithByteArray:ki withByteArray:iv withByteArray:fixedInputData withInt:r withBoolean:YES];
}

OrgBouncycastleCryptoParamsKDFFeedbackParameters *OrgBouncycastleCryptoParamsKDFFeedbackParameters_createWithoutCounterWithByteArray_withByteArray_withByteArray_(IOSByteArray *ki, IOSByteArray *iv, IOSByteArray *fixedInputData) {
  OrgBouncycastleCryptoParamsKDFFeedbackParameters_init();
  return [[OrgBouncycastleCryptoParamsKDFFeedbackParameters alloc] initWithByteArray:ki withByteArray:iv withByteArray:fixedInputData withInt:OrgBouncycastleCryptoParamsKDFFeedbackParameters_UNUSED_R withBoolean:NO];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleCryptoParamsKDFFeedbackParameters)
