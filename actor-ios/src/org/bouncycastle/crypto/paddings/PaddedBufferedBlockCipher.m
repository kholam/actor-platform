//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Math.h"
#include "java/lang/System.h"
#include "java/security/SecureRandom.h"
#include "org/bouncycastle/crypto/BlockCipher.h"
#include "org/bouncycastle/crypto/BufferedBlockCipher.h"
#include "org/bouncycastle/crypto/CipherParameters.h"
#include "org/bouncycastle/crypto/DataLengthException.h"
#include "org/bouncycastle/crypto/InvalidCipherTextException.h"
#include "org/bouncycastle/crypto/OutputLengthException.h"
#include "org/bouncycastle/crypto/paddings/BlockCipherPadding.h"
#include "org/bouncycastle/crypto/paddings/PKCS7Padding.h"
#include "org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher.h"
#include "org/bouncycastle/crypto/params/ParametersWithRandom.h"

@implementation OrgBouncycastleCryptoPaddingsPaddedBufferedBlockCipher

- (instancetype)initOrgBouncycastleCryptoPaddingsPaddedBufferedBlockCipherWithOrgBouncycastleCryptoBlockCipher:(id<OrgBouncycastleCryptoBlockCipher>)cipher
                                                           withOrgBouncycastleCryptoPaddingsBlockCipherPadding:(id<OrgBouncycastleCryptoPaddingsBlockCipherPadding>)padding {
  if (self = [super init]) {
    self->cipher_ = cipher;
    self->padding_ = padding;
    buf_ = [IOSByteArray newArrayWithLength:[((id<OrgBouncycastleCryptoBlockCipher>) nil_chk(cipher)) getBlockSize]];
    bufOff_ = 0;
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleCryptoBlockCipher:(id<OrgBouncycastleCryptoBlockCipher>)cipher
     withOrgBouncycastleCryptoPaddingsBlockCipherPadding:(id<OrgBouncycastleCryptoPaddingsBlockCipherPadding>)padding {
  return [self initOrgBouncycastleCryptoPaddingsPaddedBufferedBlockCipherWithOrgBouncycastleCryptoBlockCipher:cipher withOrgBouncycastleCryptoPaddingsBlockCipherPadding:padding];
}

- (instancetype)initWithOrgBouncycastleCryptoBlockCipher:(id<OrgBouncycastleCryptoBlockCipher>)cipher {
  return [self initOrgBouncycastleCryptoPaddingsPaddedBufferedBlockCipherWithOrgBouncycastleCryptoBlockCipher:cipher withOrgBouncycastleCryptoPaddingsBlockCipherPadding:[[OrgBouncycastleCryptoPaddingsPKCS7Padding alloc] init]];
}

- (void)init__WithBoolean:(jboolean)forEncryption
withOrgBouncycastleCryptoCipherParameters:(id<OrgBouncycastleCryptoCipherParameters>)params {
  self->forEncryption_ = forEncryption;
  [self reset];
  if ([params isKindOfClass:[OrgBouncycastleCryptoParamsParametersWithRandom class]]) {
    OrgBouncycastleCryptoParamsParametersWithRandom *p = (OrgBouncycastleCryptoParamsParametersWithRandom *) check_class_cast(params, [OrgBouncycastleCryptoParamsParametersWithRandom class]);
    [((id<OrgBouncycastleCryptoPaddingsBlockCipherPadding>) nil_chk(padding_)) init__WithJavaSecuritySecureRandom:[((OrgBouncycastleCryptoParamsParametersWithRandom *) nil_chk(p)) getRandom]];
    [((id<OrgBouncycastleCryptoBlockCipher>) nil_chk(cipher_)) init__WithBoolean:forEncryption withOrgBouncycastleCryptoCipherParameters:[p getParameters]];
  }
  else {
    [((id<OrgBouncycastleCryptoPaddingsBlockCipherPadding>) nil_chk(padding_)) init__WithJavaSecuritySecureRandom:nil];
    [((id<OrgBouncycastleCryptoBlockCipher>) nil_chk(cipher_)) init__WithBoolean:forEncryption withOrgBouncycastleCryptoCipherParameters:params];
  }
}

- (jint)getOutputSizeWithInt:(jint)len {
  jint total = len + bufOff_;
  jint leftOver = total % ((IOSByteArray *) nil_chk(buf_))->size_;
  if (leftOver == 0) {
    if (forEncryption_) {
      return total + buf_->size_;
    }
    return total;
  }
  return total - leftOver + buf_->size_;
}

- (jint)getUpdateOutputSizeWithInt:(jint)len {
  jint total = len + bufOff_;
  jint leftOver = total % ((IOSByteArray *) nil_chk(buf_))->size_;
  if (leftOver == 0) {
    return JavaLangMath_maxWithInt_withInt_(0, total - buf_->size_);
  }
  return total - leftOver;
}

- (jint)processByteWithByte:(jbyte)inArg
              withByteArray:(IOSByteArray *)outArg
                    withInt:(jint)outOff {
  jint resultLen = 0;
  if (bufOff_ == ((IOSByteArray *) nil_chk(buf_))->size_) {
    resultLen = [((id<OrgBouncycastleCryptoBlockCipher>) nil_chk(cipher_)) processBlockWithByteArray:buf_ withInt:0 withByteArray:outArg withInt:outOff];
    bufOff_ = 0;
  }
  *IOSByteArray_GetRef(buf_, bufOff_++) = inArg;
  return resultLen;
}

- (jint)processBytesWithByteArray:(IOSByteArray *)inArg
                          withInt:(jint)inOff
                          withInt:(jint)len
                    withByteArray:(IOSByteArray *)outArg
                          withInt:(jint)outOff {
  if (len < 0) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"Can't have a negative input length!"];
  }
  jint blockSize = [self getBlockSize];
  jint length = [self getUpdateOutputSizeWithInt:len];
  if (length > 0) {
    if ((outOff + length) > ((IOSByteArray *) nil_chk(outArg))->size_) {
      @throw [[OrgBouncycastleCryptoOutputLengthException alloc] initWithNSString:@"output buffer too short"];
    }
  }
  jint resultLen = 0;
  jint gapLen = ((IOSByteArray *) nil_chk(buf_))->size_ - bufOff_;
  if (len > gapLen) {
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(inArg, inOff, buf_, bufOff_, gapLen);
    resultLen += [((id<OrgBouncycastleCryptoBlockCipher>) nil_chk(cipher_)) processBlockWithByteArray:buf_ withInt:0 withByteArray:outArg withInt:outOff];
    bufOff_ = 0;
    len -= gapLen;
    inOff += gapLen;
    while (len > buf_->size_) {
      resultLen += [cipher_ processBlockWithByteArray:inArg withInt:inOff withByteArray:outArg withInt:outOff + resultLen];
      len -= blockSize;
      inOff += blockSize;
    }
  }
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(inArg, inOff, buf_, bufOff_, len);
  bufOff_ += len;
  return resultLen;
}

- (jint)doFinalWithByteArray:(IOSByteArray *)outArg
                     withInt:(jint)outOff {
  jint blockSize = [((id<OrgBouncycastleCryptoBlockCipher>) nil_chk(cipher_)) getBlockSize];
  jint resultLen = 0;
  if (forEncryption_) {
    if (bufOff_ == blockSize) {
      if ((outOff + 2 * blockSize) > ((IOSByteArray *) nil_chk(outArg))->size_) {
        [self reset];
        @throw [[OrgBouncycastleCryptoOutputLengthException alloc] initWithNSString:@"output buffer too short"];
      }
      resultLen = [cipher_ processBlockWithByteArray:buf_ withInt:0 withByteArray:outArg withInt:outOff];
      bufOff_ = 0;
    }
    [((id<OrgBouncycastleCryptoPaddingsBlockCipherPadding>) nil_chk(padding_)) addPaddingWithByteArray:buf_ withInt:bufOff_];
    resultLen += [cipher_ processBlockWithByteArray:buf_ withInt:0 withByteArray:outArg withInt:outOff + resultLen];
    [self reset];
  }
  else {
    if (bufOff_ == blockSize) {
      resultLen = [cipher_ processBlockWithByteArray:buf_ withInt:0 withByteArray:buf_ withInt:0];
      bufOff_ = 0;
    }
    else {
      [self reset];
      @throw [[OrgBouncycastleCryptoDataLengthException alloc] initWithNSString:@"last block incomplete in decryption"];
    }
    @try {
      resultLen -= [((id<OrgBouncycastleCryptoPaddingsBlockCipherPadding>) nil_chk(padding_)) padCountWithByteArray:buf_];
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buf_, 0, outArg, outOff, resultLen);
    }
    @finally {
      [self reset];
    }
  }
  return resultLen;
}

- (void)copyAllFieldsTo:(OrgBouncycastleCryptoPaddingsPaddedBufferedBlockCipher *)other {
  [super copyAllFieldsTo:other];
  other->padding_ = padding_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleCryptoPaddingsPaddedBufferedBlockCipher)
