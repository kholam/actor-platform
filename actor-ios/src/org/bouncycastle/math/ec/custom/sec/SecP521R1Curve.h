//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve.java
//

#ifndef _OrgBouncycastleMathEcCustomSecSecP521R1Curve_H_
#define _OrgBouncycastleMathEcCustomSecSecP521R1Curve_H_

@class IOSObjectArray;
@class JavaMathBigInteger;
@class OrgBouncycastleMathEcCustomSecSecP521R1Point;
@class OrgBouncycastleMathEcECCurve;
@class OrgBouncycastleMathEcECFieldElement;
@class OrgBouncycastleMathEcECPoint;

#include "J2ObjC_header.h"
#include "org/bouncycastle/math/ec/ECCurve.h"

#define OrgBouncycastleMathEcCustomSecSecP521R1Curve_SecP521R1_DEFAULT_COORDS 2

@interface OrgBouncycastleMathEcCustomSecSecP521R1Curve : OrgBouncycastleMathEcECCurve_AbstractFp {
 @public
  OrgBouncycastleMathEcCustomSecSecP521R1Point *infinity_;
}

- (instancetype)init;

- (OrgBouncycastleMathEcECCurve *)cloneCurve;

- (jboolean)supportsCoordinateSystemWithInt:(jint)coord;

- (JavaMathBigInteger *)getQ;

- (jint)getFieldSize;

- (OrgBouncycastleMathEcECFieldElement *)fromBigIntegerWithJavaMathBigInteger:(JavaMathBigInteger *)x;

- (OrgBouncycastleMathEcECPoint *)createRawPointWithOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)x
                                                withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)y
                                                                            withBoolean:(jboolean)withCompression;

- (OrgBouncycastleMathEcECPoint *)createRawPointWithOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)x
                                                withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)y
                                           withOrgBouncycastleMathEcECFieldElementArray:(IOSObjectArray *)zs
                                                                            withBoolean:(jboolean)withCompression;

- (OrgBouncycastleMathEcECPoint *)getInfinity;

@end

FOUNDATION_EXPORT BOOL OrgBouncycastleMathEcCustomSecSecP521R1Curve_initialized;
J2OBJC_STATIC_INIT(OrgBouncycastleMathEcCustomSecSecP521R1Curve)

J2OBJC_FIELD_SETTER(OrgBouncycastleMathEcCustomSecSecP521R1Curve, infinity_, OrgBouncycastleMathEcCustomSecSecP521R1Point *)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT JavaMathBigInteger *OrgBouncycastleMathEcCustomSecSecP521R1Curve_q_;
J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleMathEcCustomSecSecP521R1Curve, q_, JavaMathBigInteger *)

J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleMathEcCustomSecSecP521R1Curve, SecP521R1_DEFAULT_COORDS, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleMathEcCustomSecSecP521R1Curve)

#endif // _OrgBouncycastleMathEcCustomSecSecP521R1Curve_H_
