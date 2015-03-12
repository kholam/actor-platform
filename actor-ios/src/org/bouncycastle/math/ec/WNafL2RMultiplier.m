//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/math/ec/WNafL2RMultiplier.java
//

#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Math.h"
#include "java/math/BigInteger.h"
#include "org/bouncycastle/math/ec/ECCurve.h"
#include "org/bouncycastle/math/ec/ECPoint.h"
#include "org/bouncycastle/math/ec/LongArray.h"
#include "org/bouncycastle/math/ec/WNafL2RMultiplier.h"
#include "org/bouncycastle/math/ec/WNafPreCompInfo.h"
#include "org/bouncycastle/math/ec/WNafUtil.h"

@implementation OrgBouncycastleMathEcWNafL2RMultiplier

- (OrgBouncycastleMathEcECPoint *)multiplyPositiveWithOrgBouncycastleMathEcECPoint:(OrgBouncycastleMathEcECPoint *)p
                                                            withJavaMathBigInteger:(JavaMathBigInteger *)k {
  jint width = JavaLangMath_maxWithInt_withInt_(2, JavaLangMath_minWithInt_withInt_(16, [self getWindowSizeWithInt:[((JavaMathBigInteger *) nil_chk(k)) bitLength]]));
  OrgBouncycastleMathEcWNafPreCompInfo *wnafPreCompInfo = OrgBouncycastleMathEcWNafUtil_precomputeWithOrgBouncycastleMathEcECPoint_withInt_withBoolean_(p, width, YES);
  IOSObjectArray *preComp = [((OrgBouncycastleMathEcWNafPreCompInfo *) nil_chk(wnafPreCompInfo)) getPreComp];
  IOSObjectArray *preCompNeg = [wnafPreCompInfo getPreCompNeg];
  IOSIntArray *wnaf = OrgBouncycastleMathEcWNafUtil_generateCompactWindowNafWithInt_withJavaMathBigInteger_(width, k);
  OrgBouncycastleMathEcECPoint *R = [((OrgBouncycastleMathEcECCurve *) nil_chk([((OrgBouncycastleMathEcECPoint *) nil_chk(p)) getCurve])) getInfinity];
  jint i = ((IOSIntArray *) nil_chk(wnaf))->size_;
  if (i > 1) {
    jint wi = IOSIntArray_Get(wnaf, --i);
    jint digit = RShift32(wi, 16), zeroes = wi & (jint) 0xFFFF;
    jint n = JavaLangMath_absWithInt_(digit);
    IOSObjectArray *table = digit < 0 ? preCompNeg : preComp;
    if ((LShift32(n, 2)) < (LShift32(1, width))) {
      jint highest = IOSByteArray_Get(nil_chk(OrgBouncycastleMathEcLongArray_get_bitLengths_()), n);
      jint scale_ = width - highest;
      jint lowBits = n ^ (LShift32(1, (highest - 1)));
      jint i1 = ((LShift32(1, (width - 1))) - 1);
      jint i2 = (LShift32(lowBits, scale_)) + 1;
      R = [((OrgBouncycastleMathEcECPoint *) nil_chk(IOSObjectArray_Get(table, URShift32(i1, 1)))) addWithOrgBouncycastleMathEcECPoint:IOSObjectArray_Get(table, URShift32(i2, 1))];
      zeroes -= scale_;
    }
    else {
      R = IOSObjectArray_Get(table, URShift32(n, 1));
    }
    R = [((OrgBouncycastleMathEcECPoint *) nil_chk(R)) timesPow2WithInt:zeroes];
  }
  while (i > 0) {
    jint wi = IOSIntArray_Get(wnaf, --i);
    jint digit = RShift32(wi, 16), zeroes = wi & (jint) 0xFFFF;
    jint n = JavaLangMath_absWithInt_(digit);
    IOSObjectArray *table = digit < 0 ? preCompNeg : preComp;
    OrgBouncycastleMathEcECPoint *r = IOSObjectArray_Get(table, URShift32(n, 1));
    R = [((OrgBouncycastleMathEcECPoint *) nil_chk(R)) twicePlusWithOrgBouncycastleMathEcECPoint:r];
    R = [((OrgBouncycastleMathEcECPoint *) nil_chk(R)) timesPow2WithInt:zeroes];
  }
  return R;
}

- (jint)getWindowSizeWithInt:(jint)bits {
  return OrgBouncycastleMathEcWNafUtil_getWindowSizeWithInt_(bits);
}

- (instancetype)init {
  return [super init];
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleMathEcWNafL2RMultiplier)
