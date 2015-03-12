//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/math/BigInteger.h"
#include "org/bouncycastle/math/ec/ECFieldElement.h"
#include "org/bouncycastle/math/ec/custom/sec/SecP384R1Curve.h"
#include "org/bouncycastle/math/ec/custom/sec/SecP384R1Field.h"
#include "org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement.h"
#include "org/bouncycastle/math/raw/Mod.h"
#include "org/bouncycastle/math/raw/Nat.h"
#include "org/bouncycastle/util/Arrays.h"

BOOL OrgBouncycastleMathEcCustomSecSecP384R1FieldElement_initialized = NO;

@implementation OrgBouncycastleMathEcCustomSecSecP384R1FieldElement

JavaMathBigInteger * OrgBouncycastleMathEcCustomSecSecP384R1FieldElement_Q_;

- (instancetype)initWithJavaMathBigInteger:(JavaMathBigInteger *)x {
  if (self = [super init]) {
    if (x == nil || [x signum] < 0 || [x compareToWithId:OrgBouncycastleMathEcCustomSecSecP384R1FieldElement_Q_] >= 0) {
      @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"x value invalid for SecP384R1FieldElement"];
    }
    self->x_ = OrgBouncycastleMathEcCustomSecSecP384R1Field_fromBigIntegerWithJavaMathBigInteger_(x);
  }
  return self;
}

- (instancetype)init {
  if (self = [super init]) {
    self->x_ = OrgBouncycastleMathRawNat_createWithInt_(12);
  }
  return self;
}

- (instancetype)initWithIntArray:(IOSIntArray *)x {
  if (self = [super init]) {
    self->x_ = x;
  }
  return self;
}

- (jboolean)isZero {
  return OrgBouncycastleMathRawNat_isZeroWithInt_withIntArray_(12, x_);
}

- (jboolean)isOne {
  return OrgBouncycastleMathRawNat_isOneWithInt_withIntArray_(12, x_);
}

- (jboolean)testBitZero {
  return OrgBouncycastleMathRawNat_getBitWithIntArray_withInt_(x_, 0) == 1;
}

- (JavaMathBigInteger *)toBigInteger {
  return OrgBouncycastleMathRawNat_toBigIntegerWithInt_withIntArray_(12, x_);
}

- (NSString *)getFieldName {
  return @"SecP384R1Field";
}

- (jint)getFieldSize {
  return [((JavaMathBigInteger *) nil_chk(OrgBouncycastleMathEcCustomSecSecP384R1FieldElement_Q_)) bitLength];
}

- (OrgBouncycastleMathEcECFieldElement *)addWithOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)b {
  IOSIntArray *z = OrgBouncycastleMathRawNat_createWithInt_(12);
  OrgBouncycastleMathEcCustomSecSecP384R1Field_addWithIntArray_withIntArray_withIntArray_(x_, ((OrgBouncycastleMathEcCustomSecSecP384R1FieldElement *) nil_chk(((OrgBouncycastleMathEcCustomSecSecP384R1FieldElement *) check_class_cast(b, [OrgBouncycastleMathEcCustomSecSecP384R1FieldElement class]))))->x_, z);
  return [[OrgBouncycastleMathEcCustomSecSecP384R1FieldElement alloc] initWithIntArray:z];
}

- (OrgBouncycastleMathEcECFieldElement *)addOne {
  IOSIntArray *z = OrgBouncycastleMathRawNat_createWithInt_(12);
  OrgBouncycastleMathEcCustomSecSecP384R1Field_addOneWithIntArray_withIntArray_(x_, z);
  return [[OrgBouncycastleMathEcCustomSecSecP384R1FieldElement alloc] initWithIntArray:z];
}

- (OrgBouncycastleMathEcECFieldElement *)subtractWithOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)b {
  IOSIntArray *z = OrgBouncycastleMathRawNat_createWithInt_(12);
  OrgBouncycastleMathEcCustomSecSecP384R1Field_subtractWithIntArray_withIntArray_withIntArray_(x_, ((OrgBouncycastleMathEcCustomSecSecP384R1FieldElement *) nil_chk(((OrgBouncycastleMathEcCustomSecSecP384R1FieldElement *) check_class_cast(b, [OrgBouncycastleMathEcCustomSecSecP384R1FieldElement class]))))->x_, z);
  return [[OrgBouncycastleMathEcCustomSecSecP384R1FieldElement alloc] initWithIntArray:z];
}

- (OrgBouncycastleMathEcECFieldElement *)multiplyWithOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)b {
  IOSIntArray *z = OrgBouncycastleMathRawNat_createWithInt_(12);
  OrgBouncycastleMathEcCustomSecSecP384R1Field_multiplyWithIntArray_withIntArray_withIntArray_(x_, ((OrgBouncycastleMathEcCustomSecSecP384R1FieldElement *) nil_chk(((OrgBouncycastleMathEcCustomSecSecP384R1FieldElement *) check_class_cast(b, [OrgBouncycastleMathEcCustomSecSecP384R1FieldElement class]))))->x_, z);
  return [[OrgBouncycastleMathEcCustomSecSecP384R1FieldElement alloc] initWithIntArray:z];
}

- (OrgBouncycastleMathEcECFieldElement *)divideWithOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)b {
  IOSIntArray *z = OrgBouncycastleMathRawNat_createWithInt_(12);
  OrgBouncycastleMathRawMod_invertWithIntArray_withIntArray_withIntArray_(OrgBouncycastleMathEcCustomSecSecP384R1Field_get_P_(), ((OrgBouncycastleMathEcCustomSecSecP384R1FieldElement *) nil_chk(((OrgBouncycastleMathEcCustomSecSecP384R1FieldElement *) check_class_cast(b, [OrgBouncycastleMathEcCustomSecSecP384R1FieldElement class]))))->x_, z);
  OrgBouncycastleMathEcCustomSecSecP384R1Field_multiplyWithIntArray_withIntArray_withIntArray_(z, x_, z);
  return [[OrgBouncycastleMathEcCustomSecSecP384R1FieldElement alloc] initWithIntArray:z];
}

- (OrgBouncycastleMathEcECFieldElement *)negate {
  IOSIntArray *z = OrgBouncycastleMathRawNat_createWithInt_(12);
  OrgBouncycastleMathEcCustomSecSecP384R1Field_negateWithIntArray_withIntArray_(x_, z);
  return [[OrgBouncycastleMathEcCustomSecSecP384R1FieldElement alloc] initWithIntArray:z];
}

- (OrgBouncycastleMathEcECFieldElement *)square {
  IOSIntArray *z = OrgBouncycastleMathRawNat_createWithInt_(12);
  OrgBouncycastleMathEcCustomSecSecP384R1Field_squareWithIntArray_withIntArray_(x_, z);
  return [[OrgBouncycastleMathEcCustomSecSecP384R1FieldElement alloc] initWithIntArray:z];
}

- (OrgBouncycastleMathEcECFieldElement *)invert {
  IOSIntArray *z = OrgBouncycastleMathRawNat_createWithInt_(12);
  OrgBouncycastleMathRawMod_invertWithIntArray_withIntArray_withIntArray_(OrgBouncycastleMathEcCustomSecSecP384R1Field_get_P_(), x_, z);
  return [[OrgBouncycastleMathEcCustomSecSecP384R1FieldElement alloc] initWithIntArray:z];
}

- (OrgBouncycastleMathEcECFieldElement *)sqrt {
  IOSIntArray *x1 = self->x_;
  if (OrgBouncycastleMathRawNat_isZeroWithInt_withIntArray_(12, x1) || OrgBouncycastleMathRawNat_isOneWithInt_withIntArray_(12, x1)) {
    return self;
  }
  IOSIntArray *t1 = OrgBouncycastleMathRawNat_createWithInt_(12);
  IOSIntArray *t2 = OrgBouncycastleMathRawNat_createWithInt_(12);
  IOSIntArray *t3 = OrgBouncycastleMathRawNat_createWithInt_(12);
  IOSIntArray *t4 = OrgBouncycastleMathRawNat_createWithInt_(12);
  OrgBouncycastleMathEcCustomSecSecP384R1Field_squareWithIntArray_withIntArray_(x1, t1);
  OrgBouncycastleMathEcCustomSecSecP384R1Field_multiplyWithIntArray_withIntArray_withIntArray_(t1, x1, t1);
  OrgBouncycastleMathEcCustomSecSecP384R1Field_squareNWithIntArray_withInt_withIntArray_(t1, 2, t2);
  OrgBouncycastleMathEcCustomSecSecP384R1Field_multiplyWithIntArray_withIntArray_withIntArray_(t2, t1, t2);
  OrgBouncycastleMathEcCustomSecSecP384R1Field_squareWithIntArray_withIntArray_(t2, t2);
  OrgBouncycastleMathEcCustomSecSecP384R1Field_multiplyWithIntArray_withIntArray_withIntArray_(t2, x1, t2);
  OrgBouncycastleMathEcCustomSecSecP384R1Field_squareNWithIntArray_withInt_withIntArray_(t2, 5, t3);
  OrgBouncycastleMathEcCustomSecSecP384R1Field_multiplyWithIntArray_withIntArray_withIntArray_(t3, t2, t3);
  OrgBouncycastleMathEcCustomSecSecP384R1Field_squareNWithIntArray_withInt_withIntArray_(t3, 5, t4);
  OrgBouncycastleMathEcCustomSecSecP384R1Field_multiplyWithIntArray_withIntArray_withIntArray_(t4, t2, t4);
  OrgBouncycastleMathEcCustomSecSecP384R1Field_squareNWithIntArray_withInt_withIntArray_(t4, 15, t2);
  OrgBouncycastleMathEcCustomSecSecP384R1Field_multiplyWithIntArray_withIntArray_withIntArray_(t2, t4, t2);
  OrgBouncycastleMathEcCustomSecSecP384R1Field_squareNWithIntArray_withInt_withIntArray_(t2, 2, t3);
  OrgBouncycastleMathEcCustomSecSecP384R1Field_multiplyWithIntArray_withIntArray_withIntArray_(t1, t3, t1);
  OrgBouncycastleMathEcCustomSecSecP384R1Field_squareNWithIntArray_withInt_withIntArray_(t3, 28, t3);
  OrgBouncycastleMathEcCustomSecSecP384R1Field_multiplyWithIntArray_withIntArray_withIntArray_(t2, t3, t2);
  OrgBouncycastleMathEcCustomSecSecP384R1Field_squareNWithIntArray_withInt_withIntArray_(t2, 60, t3);
  OrgBouncycastleMathEcCustomSecSecP384R1Field_multiplyWithIntArray_withIntArray_withIntArray_(t3, t2, t3);
  IOSIntArray *r = t2;
  OrgBouncycastleMathEcCustomSecSecP384R1Field_squareNWithIntArray_withInt_withIntArray_(t3, 120, r);
  OrgBouncycastleMathEcCustomSecSecP384R1Field_multiplyWithIntArray_withIntArray_withIntArray_(r, t3, r);
  OrgBouncycastleMathEcCustomSecSecP384R1Field_squareNWithIntArray_withInt_withIntArray_(r, 15, r);
  OrgBouncycastleMathEcCustomSecSecP384R1Field_multiplyWithIntArray_withIntArray_withIntArray_(r, t4, r);
  OrgBouncycastleMathEcCustomSecSecP384R1Field_squareNWithIntArray_withInt_withIntArray_(r, 33, r);
  OrgBouncycastleMathEcCustomSecSecP384R1Field_multiplyWithIntArray_withIntArray_withIntArray_(r, t1, r);
  OrgBouncycastleMathEcCustomSecSecP384R1Field_squareNWithIntArray_withInt_withIntArray_(r, 64, r);
  OrgBouncycastleMathEcCustomSecSecP384R1Field_multiplyWithIntArray_withIntArray_withIntArray_(r, x1, r);
  OrgBouncycastleMathEcCustomSecSecP384R1Field_squareNWithIntArray_withInt_withIntArray_(r, 30, t1);
  OrgBouncycastleMathEcCustomSecSecP384R1Field_squareWithIntArray_withIntArray_(t1, t2);
  return OrgBouncycastleMathRawNat_eqWithInt_withIntArray_withIntArray_(12, x1, t2) ? [[OrgBouncycastleMathEcCustomSecSecP384R1FieldElement alloc] initWithIntArray:t1] : nil;
}

- (jboolean)isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (!([other isKindOfClass:[OrgBouncycastleMathEcCustomSecSecP384R1FieldElement class]])) {
    return NO;
  }
  OrgBouncycastleMathEcCustomSecSecP384R1FieldElement *o = (OrgBouncycastleMathEcCustomSecSecP384R1FieldElement *) check_class_cast(other, [OrgBouncycastleMathEcCustomSecSecP384R1FieldElement class]);
  return OrgBouncycastleMathRawNat_eqWithInt_withIntArray_withIntArray_(12, x_, ((OrgBouncycastleMathEcCustomSecSecP384R1FieldElement *) nil_chk(o))->x_);
}

- (NSUInteger)hash {
  return ((jint) [((JavaMathBigInteger *) nil_chk(OrgBouncycastleMathEcCustomSecSecP384R1FieldElement_Q_)) hash]) ^ OrgBouncycastleUtilArrays_hashCodeWithIntArray_withInt_withInt_(x_, 0, 12);
}

- (void)copyAllFieldsTo:(OrgBouncycastleMathEcCustomSecSecP384R1FieldElement *)other {
  [super copyAllFieldsTo:other];
  other->x_ = x_;
}

+ (void)initialize {
  if (self == [OrgBouncycastleMathEcCustomSecSecP384R1FieldElement class]) {
    OrgBouncycastleMathEcCustomSecSecP384R1FieldElement_Q_ = OrgBouncycastleMathEcCustomSecSecP384R1Curve_get_q_();
    J2OBJC_SET_INITIALIZED(OrgBouncycastleMathEcCustomSecSecP384R1FieldElement)
  }
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleMathEcCustomSecSecP384R1FieldElement)
