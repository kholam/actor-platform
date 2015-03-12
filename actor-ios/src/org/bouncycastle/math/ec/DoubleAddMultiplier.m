//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/math/ec/DoubleAddMultiplier.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/math/BigInteger.h"
#include "org/bouncycastle/math/ec/DoubleAddMultiplier.h"
#include "org/bouncycastle/math/ec/ECCurve.h"
#include "org/bouncycastle/math/ec/ECPoint.h"

@implementation OrgBouncycastleMathEcDoubleAddMultiplier

- (OrgBouncycastleMathEcECPoint *)multiplyPositiveWithOrgBouncycastleMathEcECPoint:(OrgBouncycastleMathEcECPoint *)p
                                                            withJavaMathBigInteger:(JavaMathBigInteger *)k {
  IOSObjectArray *R = [IOSObjectArray newArrayWithObjects:(id[]){ [((OrgBouncycastleMathEcECCurve *) nil_chk([((OrgBouncycastleMathEcECPoint *) nil_chk(p)) getCurve])) getInfinity], p } count:2 type:OrgBouncycastleMathEcECPoint_class_()];
  jint n = [((JavaMathBigInteger *) nil_chk(k)) bitLength];
  for (jint i = 0; i < n; ++i) {
    jint b = [k testBitWithInt:i] ? 1 : 0;
    jint bp = 1 - b;
    IOSObjectArray_Set(R, bp, [((OrgBouncycastleMathEcECPoint *) nil_chk(IOSObjectArray_Get(R, bp))) twicePlusWithOrgBouncycastleMathEcECPoint:IOSObjectArray_Get(R, b)]);
  }
  return IOSObjectArray_Get(R, 0);
}

- (instancetype)init {
  return [super init];
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleMathEcDoubleAddMultiplier)
