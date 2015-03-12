//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/math/ec/custom/sec/SecP256K1Point.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/bouncycastle/math/ec/ECCurve.h"
#include "org/bouncycastle/math/ec/ECFieldElement.h"
#include "org/bouncycastle/math/ec/ECPoint.h"
#include "org/bouncycastle/math/ec/custom/sec/SecP256K1Field.h"
#include "org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement.h"
#include "org/bouncycastle/math/ec/custom/sec/SecP256K1Point.h"
#include "org/bouncycastle/math/raw/Nat.h"
#include "org/bouncycastle/math/raw/Nat256.h"

@implementation OrgBouncycastleMathEcCustomSecSecP256K1Point

- (instancetype)initWithOrgBouncycastleMathEcECCurve:(OrgBouncycastleMathEcECCurve *)curve
             withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)x
             withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)y {
  return [self initOrgBouncycastleMathEcCustomSecSecP256K1PointWithOrgBouncycastleMathEcECCurve:curve withOrgBouncycastleMathEcECFieldElement:x withOrgBouncycastleMathEcECFieldElement:y withBoolean:NO];
}

- (instancetype)initOrgBouncycastleMathEcCustomSecSecP256K1PointWithOrgBouncycastleMathEcECCurve:(OrgBouncycastleMathEcECCurve *)curve
                                                         withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)x
                                                         withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)y
                                                                                     withBoolean:(jboolean)withCompression {
  if (self = [super initWithOrgBouncycastleMathEcECCurve:curve withOrgBouncycastleMathEcECFieldElement:x withOrgBouncycastleMathEcECFieldElement:y]) {
    if ((x == nil) != (y == nil)) {
      @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"Exactly one of the field elements is null"];
    }
    self->withCompression_ = withCompression;
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleMathEcECCurve:(OrgBouncycastleMathEcECCurve *)curve
             withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)x
             withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)y
                                         withBoolean:(jboolean)withCompression {
  return [self initOrgBouncycastleMathEcCustomSecSecP256K1PointWithOrgBouncycastleMathEcECCurve:curve withOrgBouncycastleMathEcECFieldElement:x withOrgBouncycastleMathEcECFieldElement:y withBoolean:withCompression];
}

- (instancetype)initWithOrgBouncycastleMathEcECCurve:(OrgBouncycastleMathEcECCurve *)curve
             withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)x
             withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)y
        withOrgBouncycastleMathEcECFieldElementArray:(IOSObjectArray *)zs
                                         withBoolean:(jboolean)withCompression {
  if (self = [super initWithOrgBouncycastleMathEcECCurve:curve withOrgBouncycastleMathEcECFieldElement:x withOrgBouncycastleMathEcECFieldElement:y withOrgBouncycastleMathEcECFieldElementArray:zs]) {
    self->withCompression_ = withCompression;
  }
  return self;
}

- (OrgBouncycastleMathEcECPoint *)detach {
  return [[OrgBouncycastleMathEcCustomSecSecP256K1Point alloc] initWithOrgBouncycastleMathEcECCurve:nil withOrgBouncycastleMathEcECFieldElement:[self getAffineXCoord] withOrgBouncycastleMathEcECFieldElement:[self getAffineYCoord]];
}

- (OrgBouncycastleMathEcECPoint *)addWithOrgBouncycastleMathEcECPoint:(OrgBouncycastleMathEcECPoint *)b {
  if ([self isInfinity]) {
    return b;
  }
  if ([((OrgBouncycastleMathEcECPoint *) nil_chk(b)) isInfinity]) {
    return self;
  }
  if (self == b) {
    return [self twice];
  }
  OrgBouncycastleMathEcECCurve *curve = [self getCurve];
  OrgBouncycastleMathEcCustomSecSecP256K1FieldElement *X1 = (OrgBouncycastleMathEcCustomSecSecP256K1FieldElement *) check_class_cast(self->x_, [OrgBouncycastleMathEcCustomSecSecP256K1FieldElement class]), *Y1 = (OrgBouncycastleMathEcCustomSecSecP256K1FieldElement *) check_class_cast(self->y_, [OrgBouncycastleMathEcCustomSecSecP256K1FieldElement class]);
  OrgBouncycastleMathEcCustomSecSecP256K1FieldElement *X2 = (OrgBouncycastleMathEcCustomSecSecP256K1FieldElement *) check_class_cast([b getXCoord], [OrgBouncycastleMathEcCustomSecSecP256K1FieldElement class]), *Y2 = (OrgBouncycastleMathEcCustomSecSecP256K1FieldElement *) check_class_cast([b getYCoord], [OrgBouncycastleMathEcCustomSecSecP256K1FieldElement class]);
  OrgBouncycastleMathEcCustomSecSecP256K1FieldElement *Z1 = (OrgBouncycastleMathEcCustomSecSecP256K1FieldElement *) check_class_cast(IOSObjectArray_Get(nil_chk(self->zs_), 0), [OrgBouncycastleMathEcCustomSecSecP256K1FieldElement class]);
  OrgBouncycastleMathEcCustomSecSecP256K1FieldElement *Z2 = (OrgBouncycastleMathEcCustomSecSecP256K1FieldElement *) check_class_cast([b getZCoordWithInt:0], [OrgBouncycastleMathEcCustomSecSecP256K1FieldElement class]);
  jint c;
  IOSIntArray *tt1 = OrgBouncycastleMathRawNat256_createExt();
  IOSIntArray *t2 = OrgBouncycastleMathRawNat256_create();
  IOSIntArray *t3 = OrgBouncycastleMathRawNat256_create();
  IOSIntArray *t4 = OrgBouncycastleMathRawNat256_create();
  jboolean Z1IsOne = [((OrgBouncycastleMathEcCustomSecSecP256K1FieldElement *) nil_chk(Z1)) isOne];
  IOSIntArray *U2, *S2;
  if (Z1IsOne) {
    U2 = ((OrgBouncycastleMathEcCustomSecSecP256K1FieldElement *) nil_chk(X2))->x_;
    S2 = ((OrgBouncycastleMathEcCustomSecSecP256K1FieldElement *) nil_chk(Y2))->x_;
  }
  else {
    S2 = t3;
    OrgBouncycastleMathEcCustomSecSecP256K1Field_squareWithIntArray_withIntArray_(Z1->x_, S2);
    U2 = t2;
    OrgBouncycastleMathEcCustomSecSecP256K1Field_multiplyWithIntArray_withIntArray_withIntArray_(S2, ((OrgBouncycastleMathEcCustomSecSecP256K1FieldElement *) nil_chk(X2))->x_, U2);
    OrgBouncycastleMathEcCustomSecSecP256K1Field_multiplyWithIntArray_withIntArray_withIntArray_(S2, Z1->x_, S2);
    OrgBouncycastleMathEcCustomSecSecP256K1Field_multiplyWithIntArray_withIntArray_withIntArray_(S2, ((OrgBouncycastleMathEcCustomSecSecP256K1FieldElement *) nil_chk(Y2))->x_, S2);
  }
  jboolean Z2IsOne = [((OrgBouncycastleMathEcCustomSecSecP256K1FieldElement *) nil_chk(Z2)) isOne];
  IOSIntArray *U1, *S1;
  if (Z2IsOne) {
    U1 = ((OrgBouncycastleMathEcCustomSecSecP256K1FieldElement *) nil_chk(X1))->x_;
    S1 = ((OrgBouncycastleMathEcCustomSecSecP256K1FieldElement *) nil_chk(Y1))->x_;
  }
  else {
    S1 = t4;
    OrgBouncycastleMathEcCustomSecSecP256K1Field_squareWithIntArray_withIntArray_(Z2->x_, S1);
    U1 = tt1;
    OrgBouncycastleMathEcCustomSecSecP256K1Field_multiplyWithIntArray_withIntArray_withIntArray_(S1, ((OrgBouncycastleMathEcCustomSecSecP256K1FieldElement *) nil_chk(X1))->x_, U1);
    OrgBouncycastleMathEcCustomSecSecP256K1Field_multiplyWithIntArray_withIntArray_withIntArray_(S1, Z2->x_, S1);
    OrgBouncycastleMathEcCustomSecSecP256K1Field_multiplyWithIntArray_withIntArray_withIntArray_(S1, ((OrgBouncycastleMathEcCustomSecSecP256K1FieldElement *) nil_chk(Y1))->x_, S1);
  }
  IOSIntArray *H = OrgBouncycastleMathRawNat256_create();
  OrgBouncycastleMathEcCustomSecSecP256K1Field_subtractWithIntArray_withIntArray_withIntArray_(U1, U2, H);
  IOSIntArray *R = t2;
  OrgBouncycastleMathEcCustomSecSecP256K1Field_subtractWithIntArray_withIntArray_withIntArray_(S1, S2, R);
  if (OrgBouncycastleMathRawNat256_isZeroWithIntArray_(H)) {
    if (OrgBouncycastleMathRawNat256_isZeroWithIntArray_(R)) {
      return [self twice];
    }
    return [((OrgBouncycastleMathEcECCurve *) nil_chk(curve)) getInfinity];
  }
  IOSIntArray *HSquared = t3;
  OrgBouncycastleMathEcCustomSecSecP256K1Field_squareWithIntArray_withIntArray_(H, HSquared);
  IOSIntArray *G = OrgBouncycastleMathRawNat256_create();
  OrgBouncycastleMathEcCustomSecSecP256K1Field_multiplyWithIntArray_withIntArray_withIntArray_(HSquared, H, G);
  IOSIntArray *V = t3;
  OrgBouncycastleMathEcCustomSecSecP256K1Field_multiplyWithIntArray_withIntArray_withIntArray_(HSquared, U1, V);
  OrgBouncycastleMathEcCustomSecSecP256K1Field_negateWithIntArray_withIntArray_(G, G);
  OrgBouncycastleMathRawNat256_mulWithIntArray_withIntArray_withIntArray_(S1, G, tt1);
  c = OrgBouncycastleMathRawNat256_addBothToWithIntArray_withIntArray_withIntArray_(V, V, G);
  OrgBouncycastleMathEcCustomSecSecP256K1Field_reduce32WithInt_withIntArray_(c, G);
  OrgBouncycastleMathEcCustomSecSecP256K1FieldElement *X3 = [[OrgBouncycastleMathEcCustomSecSecP256K1FieldElement alloc] initWithIntArray:t4];
  OrgBouncycastleMathEcCustomSecSecP256K1Field_squareWithIntArray_withIntArray_(R, X3->x_);
  OrgBouncycastleMathEcCustomSecSecP256K1Field_subtractWithIntArray_withIntArray_withIntArray_(X3->x_, G, X3->x_);
  OrgBouncycastleMathEcCustomSecSecP256K1FieldElement *Y3 = [[OrgBouncycastleMathEcCustomSecSecP256K1FieldElement alloc] initWithIntArray:G];
  OrgBouncycastleMathEcCustomSecSecP256K1Field_subtractWithIntArray_withIntArray_withIntArray_(V, X3->x_, Y3->x_);
  OrgBouncycastleMathEcCustomSecSecP256K1Field_multiplyAddToExtWithIntArray_withIntArray_withIntArray_(Y3->x_, R, tt1);
  OrgBouncycastleMathEcCustomSecSecP256K1Field_reduceWithIntArray_withIntArray_(tt1, Y3->x_);
  OrgBouncycastleMathEcCustomSecSecP256K1FieldElement *Z3 = [[OrgBouncycastleMathEcCustomSecSecP256K1FieldElement alloc] initWithIntArray:H];
  if (!Z1IsOne) {
    OrgBouncycastleMathEcCustomSecSecP256K1Field_multiplyWithIntArray_withIntArray_withIntArray_(Z3->x_, Z1->x_, Z3->x_);
  }
  if (!Z2IsOne) {
    OrgBouncycastleMathEcCustomSecSecP256K1Field_multiplyWithIntArray_withIntArray_withIntArray_(Z3->x_, Z2->x_, Z3->x_);
  }
  IOSObjectArray *zs = [IOSObjectArray newArrayWithObjects:(id[]){ Z3 } count:1 type:OrgBouncycastleMathEcECFieldElement_class_()];
  return [[OrgBouncycastleMathEcCustomSecSecP256K1Point alloc] initWithOrgBouncycastleMathEcECCurve:curve withOrgBouncycastleMathEcECFieldElement:X3 withOrgBouncycastleMathEcECFieldElement:Y3 withOrgBouncycastleMathEcECFieldElementArray:zs withBoolean:self->withCompression_];
}

- (OrgBouncycastleMathEcECPoint *)twice {
  if ([self isInfinity]) {
    return self;
  }
  OrgBouncycastleMathEcECCurve *curve = [self getCurve];
  OrgBouncycastleMathEcCustomSecSecP256K1FieldElement *Y1 = (OrgBouncycastleMathEcCustomSecSecP256K1FieldElement *) check_class_cast(self->y_, [OrgBouncycastleMathEcCustomSecSecP256K1FieldElement class]);
  if ([((OrgBouncycastleMathEcCustomSecSecP256K1FieldElement *) nil_chk(Y1)) isZero]) {
    return [((OrgBouncycastleMathEcECCurve *) nil_chk(curve)) getInfinity];
  }
  OrgBouncycastleMathEcCustomSecSecP256K1FieldElement *X1 = (OrgBouncycastleMathEcCustomSecSecP256K1FieldElement *) check_class_cast(self->x_, [OrgBouncycastleMathEcCustomSecSecP256K1FieldElement class]), *Z1 = (OrgBouncycastleMathEcCustomSecSecP256K1FieldElement *) check_class_cast(IOSObjectArray_Get(nil_chk(self->zs_), 0), [OrgBouncycastleMathEcCustomSecSecP256K1FieldElement class]);
  jint c;
  IOSIntArray *Y1Squared = OrgBouncycastleMathRawNat256_create();
  OrgBouncycastleMathEcCustomSecSecP256K1Field_squareWithIntArray_withIntArray_(Y1->x_, Y1Squared);
  IOSIntArray *T = OrgBouncycastleMathRawNat256_create();
  OrgBouncycastleMathEcCustomSecSecP256K1Field_squareWithIntArray_withIntArray_(Y1Squared, T);
  IOSIntArray *M = OrgBouncycastleMathRawNat256_create();
  OrgBouncycastleMathEcCustomSecSecP256K1Field_squareWithIntArray_withIntArray_(((OrgBouncycastleMathEcCustomSecSecP256K1FieldElement *) nil_chk(X1))->x_, M);
  c = OrgBouncycastleMathRawNat256_addBothToWithIntArray_withIntArray_withIntArray_(M, M, M);
  OrgBouncycastleMathEcCustomSecSecP256K1Field_reduce32WithInt_withIntArray_(c, M);
  IOSIntArray *S = Y1Squared;
  OrgBouncycastleMathEcCustomSecSecP256K1Field_multiplyWithIntArray_withIntArray_withIntArray_(Y1Squared, X1->x_, S);
  c = OrgBouncycastleMathRawNat_shiftUpBitsWithInt_withIntArray_withInt_withInt_(8, S, 2, 0);
  OrgBouncycastleMathEcCustomSecSecP256K1Field_reduce32WithInt_withIntArray_(c, S);
  IOSIntArray *t1 = OrgBouncycastleMathRawNat256_create();
  c = OrgBouncycastleMathRawNat_shiftUpBitsWithInt_withIntArray_withInt_withInt_withIntArray_(8, T, 3, 0, t1);
  OrgBouncycastleMathEcCustomSecSecP256K1Field_reduce32WithInt_withIntArray_(c, t1);
  OrgBouncycastleMathEcCustomSecSecP256K1FieldElement *X3 = [[OrgBouncycastleMathEcCustomSecSecP256K1FieldElement alloc] initWithIntArray:T];
  OrgBouncycastleMathEcCustomSecSecP256K1Field_squareWithIntArray_withIntArray_(M, X3->x_);
  OrgBouncycastleMathEcCustomSecSecP256K1Field_subtractWithIntArray_withIntArray_withIntArray_(X3->x_, S, X3->x_);
  OrgBouncycastleMathEcCustomSecSecP256K1Field_subtractWithIntArray_withIntArray_withIntArray_(X3->x_, S, X3->x_);
  OrgBouncycastleMathEcCustomSecSecP256K1FieldElement *Y3 = [[OrgBouncycastleMathEcCustomSecSecP256K1FieldElement alloc] initWithIntArray:S];
  OrgBouncycastleMathEcCustomSecSecP256K1Field_subtractWithIntArray_withIntArray_withIntArray_(S, X3->x_, Y3->x_);
  OrgBouncycastleMathEcCustomSecSecP256K1Field_multiplyWithIntArray_withIntArray_withIntArray_(Y3->x_, M, Y3->x_);
  OrgBouncycastleMathEcCustomSecSecP256K1Field_subtractWithIntArray_withIntArray_withIntArray_(Y3->x_, t1, Y3->x_);
  OrgBouncycastleMathEcCustomSecSecP256K1FieldElement *Z3 = [[OrgBouncycastleMathEcCustomSecSecP256K1FieldElement alloc] initWithIntArray:M];
  OrgBouncycastleMathEcCustomSecSecP256K1Field_twiceWithIntArray_withIntArray_(Y1->x_, Z3->x_);
  if (![((OrgBouncycastleMathEcCustomSecSecP256K1FieldElement *) nil_chk(Z1)) isOne]) {
    OrgBouncycastleMathEcCustomSecSecP256K1Field_multiplyWithIntArray_withIntArray_withIntArray_(Z3->x_, Z1->x_, Z3->x_);
  }
  return [[OrgBouncycastleMathEcCustomSecSecP256K1Point alloc] initWithOrgBouncycastleMathEcECCurve:curve withOrgBouncycastleMathEcECFieldElement:X3 withOrgBouncycastleMathEcECFieldElement:Y3 withOrgBouncycastleMathEcECFieldElementArray:[IOSObjectArray newArrayWithObjects:(id[]){ Z3 } count:1 type:OrgBouncycastleMathEcECFieldElement_class_()] withBoolean:self->withCompression_];
}

- (OrgBouncycastleMathEcECPoint *)twicePlusWithOrgBouncycastleMathEcECPoint:(OrgBouncycastleMathEcECPoint *)b {
  if (self == b) {
    return [self threeTimes];
  }
  if ([self isInfinity]) {
    return b;
  }
  if ([((OrgBouncycastleMathEcECPoint *) nil_chk(b)) isInfinity]) {
    return [self twice];
  }
  OrgBouncycastleMathEcECFieldElement *Y1 = self->y_;
  if ([((OrgBouncycastleMathEcECFieldElement *) nil_chk(Y1)) isZero]) {
    return b;
  }
  return [((OrgBouncycastleMathEcECPoint *) nil_chk([self twice])) addWithOrgBouncycastleMathEcECPoint:b];
}

- (OrgBouncycastleMathEcECPoint *)threeTimes {
  if ([self isInfinity] || [((OrgBouncycastleMathEcECFieldElement *) nil_chk(self->y_)) isZero]) {
    return self;
  }
  return [((OrgBouncycastleMathEcECPoint *) nil_chk([self twice])) addWithOrgBouncycastleMathEcECPoint:self];
}

- (OrgBouncycastleMathEcECPoint *)negate {
  if ([self isInfinity]) {
    return self;
  }
  return [[OrgBouncycastleMathEcCustomSecSecP256K1Point alloc] initWithOrgBouncycastleMathEcECCurve:curve_ withOrgBouncycastleMathEcECFieldElement:self->x_ withOrgBouncycastleMathEcECFieldElement:[((OrgBouncycastleMathEcECFieldElement *) nil_chk(self->y_)) negate] withOrgBouncycastleMathEcECFieldElementArray:self->zs_ withBoolean:self->withCompression_];
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleMathEcCustomSecSecP256K1Point)
