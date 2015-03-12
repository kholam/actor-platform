//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/pkcs/PBKDF2Params.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/math/BigInteger.h"
#include "java/util/Enumeration.h"
#include "org/bouncycastle/asn1/ASN1EncodableVector.h"
#include "org/bouncycastle/asn1/ASN1Integer.h"
#include "org/bouncycastle/asn1/ASN1ObjectIdentifier.h"
#include "org/bouncycastle/asn1/ASN1OctetString.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1Sequence.h"
#include "org/bouncycastle/asn1/DERNull.h"
#include "org/bouncycastle/asn1/DEROctetString.h"
#include "org/bouncycastle/asn1/DERSequence.h"
#include "org/bouncycastle/asn1/pkcs/PBKDF2Params.h"
#include "org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers.h"
#include "org/bouncycastle/asn1/x509/AlgorithmIdentifier.h"

@interface OrgBouncycastleAsn1PkcsPBKDF2Params () {
 @public
  OrgBouncycastleAsn1ASN1OctetString *octStr_;
  OrgBouncycastleAsn1ASN1Integer *iterationCount_;
  OrgBouncycastleAsn1ASN1Integer *keyLength_;
  OrgBouncycastleAsn1X509AlgorithmIdentifier *prf_;
}
- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq;
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1PkcsPBKDF2Params, octStr_, OrgBouncycastleAsn1ASN1OctetString *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1PkcsPBKDF2Params, iterationCount_, OrgBouncycastleAsn1ASN1Integer *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1PkcsPBKDF2Params, keyLength_, OrgBouncycastleAsn1ASN1Integer *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1PkcsPBKDF2Params, prf_, OrgBouncycastleAsn1X509AlgorithmIdentifier *)

BOOL OrgBouncycastleAsn1PkcsPBKDF2Params_initialized = NO;

@implementation OrgBouncycastleAsn1PkcsPBKDF2Params

OrgBouncycastleAsn1X509AlgorithmIdentifier * OrgBouncycastleAsn1PkcsPBKDF2Params_algid_hmacWithSHA1_;

+ (OrgBouncycastleAsn1PkcsPBKDF2Params *)getInstanceWithId:(id)obj {
  return OrgBouncycastleAsn1PkcsPBKDF2Params_getInstanceWithId_(obj);
}

- (instancetype)initOrgBouncycastleAsn1PkcsPBKDF2ParamsWithByteArray:(IOSByteArray *)salt
                                                             withInt:(jint)iterationCount {
  if (self = [super init]) {
    self->octStr_ = [[OrgBouncycastleAsn1DEROctetString alloc] initWithByteArray:salt];
    self->iterationCount_ = [[OrgBouncycastleAsn1ASN1Integer alloc] initWithLong:iterationCount];
  }
  return self;
}

- (instancetype)initWithByteArray:(IOSByteArray *)salt
                          withInt:(jint)iterationCount {
  return [self initOrgBouncycastleAsn1PkcsPBKDF2ParamsWithByteArray:salt withInt:iterationCount];
}

- (instancetype)initWithByteArray:(IOSByteArray *)salt
                          withInt:(jint)iterationCount
                          withInt:(jint)keyLength {
  if (self = [self initOrgBouncycastleAsn1PkcsPBKDF2ParamsWithByteArray:salt withInt:iterationCount]) {
    self->keyLength_ = [[OrgBouncycastleAsn1ASN1Integer alloc] initWithLong:keyLength];
  }
  return self;
}

- (instancetype)initWithByteArray:(IOSByteArray *)salt
                          withInt:(jint)iterationCount
                          withInt:(jint)keyLength
withOrgBouncycastleAsn1X509AlgorithmIdentifier:(OrgBouncycastleAsn1X509AlgorithmIdentifier *)prf {
  if (self = [self initOrgBouncycastleAsn1PkcsPBKDF2ParamsWithByteArray:salt withInt:iterationCount]) {
    self->keyLength_ = [[OrgBouncycastleAsn1ASN1Integer alloc] initWithLong:keyLength];
    self->prf_ = prf;
  }
  return self;
}

- (instancetype)initWithByteArray:(IOSByteArray *)salt
                          withInt:(jint)iterationCount
withOrgBouncycastleAsn1X509AlgorithmIdentifier:(OrgBouncycastleAsn1X509AlgorithmIdentifier *)prf {
  if (self = [self initOrgBouncycastleAsn1PkcsPBKDF2ParamsWithByteArray:salt withInt:iterationCount]) {
    self->prf_ = prf;
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq {
  if (self = [super init]) {
    id<JavaUtilEnumeration> e = [((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(seq)) getObjects];
    octStr_ = (OrgBouncycastleAsn1ASN1OctetString *) check_class_cast([((id<JavaUtilEnumeration>) nil_chk(e)) nextElement], [OrgBouncycastleAsn1ASN1OctetString class]);
    iterationCount_ = (OrgBouncycastleAsn1ASN1Integer *) check_class_cast([e nextElement], [OrgBouncycastleAsn1ASN1Integer class]);
    if ([e hasMoreElements]) {
      id o = [e nextElement];
      if ([o isKindOfClass:[OrgBouncycastleAsn1ASN1Integer class]]) {
        keyLength_ = OrgBouncycastleAsn1ASN1Integer_getInstanceWithId_(o);
        if ([e hasMoreElements]) {
          o = [e nextElement];
        }
        else {
          o = nil;
        }
      }
      else {
        keyLength_ = nil;
      }
      if (o != nil) {
        prf_ = OrgBouncycastleAsn1X509AlgorithmIdentifier_getInstanceWithId_(o);
      }
    }
  }
  return self;
}

- (IOSByteArray *)getSalt {
  return [((OrgBouncycastleAsn1ASN1OctetString *) nil_chk(octStr_)) getOctets];
}

- (JavaMathBigInteger *)getIterationCount {
  return [((OrgBouncycastleAsn1ASN1Integer *) nil_chk(iterationCount_)) getValue];
}

- (JavaMathBigInteger *)getKeyLength {
  if (keyLength_ != nil) {
    return [keyLength_ getValue];
  }
  return nil;
}

- (jboolean)isDefaultPrf {
  return prf_ == nil || [prf_ isEqual:OrgBouncycastleAsn1PkcsPBKDF2Params_algid_hmacWithSHA1_];
}

- (OrgBouncycastleAsn1X509AlgorithmIdentifier *)getPrf {
  if (prf_ != nil) {
    return prf_;
  }
  return OrgBouncycastleAsn1PkcsPBKDF2Params_algid_hmacWithSHA1_;
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  OrgBouncycastleAsn1ASN1EncodableVector *v = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:octStr_];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:iterationCount_];
  if (keyLength_ != nil) {
    [v addWithOrgBouncycastleAsn1ASN1Encodable:keyLength_];
  }
  if (prf_ != nil && ![prf_ isEqual:OrgBouncycastleAsn1PkcsPBKDF2Params_algid_hmacWithSHA1_]) {
    [v addWithOrgBouncycastleAsn1ASN1Encodable:prf_];
  }
  return [[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:v];
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1PkcsPBKDF2Params *)other {
  [super copyAllFieldsTo:other];
  other->octStr_ = octStr_;
  other->iterationCount_ = iterationCount_;
  other->keyLength_ = keyLength_;
  other->prf_ = prf_;
}

+ (void)initialize {
  if (self == [OrgBouncycastleAsn1PkcsPBKDF2Params class]) {
    OrgBouncycastleAsn1PkcsPBKDF2Params_algid_hmacWithSHA1_ = [[OrgBouncycastleAsn1X509AlgorithmIdentifier alloc] initWithOrgBouncycastleAsn1ASN1ObjectIdentifier:OrgBouncycastleAsn1PkcsPKCSObjectIdentifiers_get_id_hmacWithSHA1_() withOrgBouncycastleAsn1ASN1Encodable:OrgBouncycastleAsn1DERNull_get_INSTANCE_()];
    J2OBJC_SET_INITIALIZED(OrgBouncycastleAsn1PkcsPBKDF2Params)
  }
}

@end

OrgBouncycastleAsn1PkcsPBKDF2Params *OrgBouncycastleAsn1PkcsPBKDF2Params_getInstanceWithId_(id obj) {
  OrgBouncycastleAsn1PkcsPBKDF2Params_init();
  if ([obj isKindOfClass:[OrgBouncycastleAsn1PkcsPBKDF2Params class]]) {
    return (OrgBouncycastleAsn1PkcsPBKDF2Params *) check_class_cast(obj, [OrgBouncycastleAsn1PkcsPBKDF2Params class]);
  }
  if (obj != nil) {
    return [[OrgBouncycastleAsn1PkcsPBKDF2Params alloc] initWithOrgBouncycastleAsn1ASN1Sequence:OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_(obj)];
  }
  return nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1PkcsPBKDF2Params)
