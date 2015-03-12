//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/util/encoders/HexTranslator.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/bouncycastle/util/encoders/HexTranslator.h"

@interface OrgBouncycastleUtilEncodersHexTranslator () {
}
@end

BOOL OrgBouncycastleUtilEncodersHexTranslator_initialized = NO;

@implementation OrgBouncycastleUtilEncodersHexTranslator

IOSByteArray * OrgBouncycastleUtilEncodersHexTranslator_hexTable_;

- (jint)getEncodedBlockSize {
  return 2;
}

- (jint)encodeWithByteArray:(IOSByteArray *)inArg
                    withInt:(jint)inOff
                    withInt:(jint)length
              withByteArray:(IOSByteArray *)outArg
                    withInt:(jint)outOff {
  for (jint i = 0, j = 0; i < length; i++, j += 2) {
    *IOSByteArray_GetRef(nil_chk(outArg), outOff + j) = IOSByteArray_Get(nil_chk(OrgBouncycastleUtilEncodersHexTranslator_hexTable_), (RShift32(IOSByteArray_Get(nil_chk(inArg), inOff), 4)) & (jint) 0x0f);
    *IOSByteArray_GetRef(outArg, outOff + j + 1) = IOSByteArray_Get(OrgBouncycastleUtilEncodersHexTranslator_hexTable_, IOSByteArray_Get(inArg, inOff) & (jint) 0x0f);
    inOff++;
  }
  return length * 2;
}

- (jint)getDecodedBlockSize {
  return 1;
}

- (jint)decodeWithByteArray:(IOSByteArray *)inArg
                    withInt:(jint)inOff
                    withInt:(jint)length
              withByteArray:(IOSByteArray *)outArg
                    withInt:(jint)outOff {
  jint halfLength = length / 2;
  jbyte left, right;
  for (jint i = 0; i < halfLength; i++) {
    left = IOSByteArray_Get(nil_chk(inArg), inOff + i * 2);
    right = IOSByteArray_Get(inArg, inOff + i * 2 + 1);
    if (left < (jbyte) 'a') {
      *IOSByteArray_GetRef(nil_chk(outArg), outOff) = (jbyte) (LShift32((left - '0'), 4));
    }
    else {
      *IOSByteArray_GetRef(nil_chk(outArg), outOff) = (jbyte) (LShift32((left - 'a' + 10), 4));
    }
    if (right < (jbyte) 'a') {
      *IOSByteArray_GetRef(nil_chk(outArg), outOff) += (jbyte) (right - '0');
    }
    else {
      *IOSByteArray_GetRef(nil_chk(outArg), outOff) += (jbyte) (right - 'a' + 10);
    }
    outOff++;
  }
  return halfLength;
}

- (instancetype)init {
  return [super init];
}

+ (void)initialize {
  if (self == [OrgBouncycastleUtilEncodersHexTranslator class]) {
    OrgBouncycastleUtilEncodersHexTranslator_hexTable_ = [IOSByteArray newArrayWithBytes:(jbyte[]){ (jbyte) '0', (jbyte) '1', (jbyte) '2', (jbyte) '3', (jbyte) '4', (jbyte) '5', (jbyte) '6', (jbyte) '7', (jbyte) '8', (jbyte) '9', (jbyte) 'a', (jbyte) 'b', (jbyte) 'c', (jbyte) 'd', (jbyte) 'e', (jbyte) 'f' } count:16];
    J2OBJC_SET_INITIALIZED(OrgBouncycastleUtilEncodersHexTranslator)
  }
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleUtilEncodersHexTranslator)
