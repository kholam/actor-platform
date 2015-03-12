//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/cmp/PBMParameter.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/bouncycastle/asn1/ASN1Encodable.h"
#include "org/bouncycastle/asn1/ASN1EncodableVector.h"
#include "org/bouncycastle/asn1/ASN1Integer.h"
#include "org/bouncycastle/asn1/ASN1OctetString.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1Sequence.h"
#include "org/bouncycastle/asn1/DEROctetString.h"
#include "org/bouncycastle/asn1/DERSequence.h"
#include "org/bouncycastle/asn1/cmp/PBMParameter.h"
#include "org/bouncycastle/asn1/x509/AlgorithmIdentifier.h"

@interface OrgBouncycastleAsn1CmpPBMParameter () {
 @public
  OrgBouncycastleAsn1ASN1OctetString *salt_;
  OrgBouncycastleAsn1X509AlgorithmIdentifier *owf_;
  OrgBouncycastleAsn1ASN1Integer *iterationCount_;
  OrgBouncycastleAsn1X509AlgorithmIdentifier *mac_;
}
- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq;
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CmpPBMParameter, salt_, OrgBouncycastleAsn1ASN1OctetString *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CmpPBMParameter, owf_, OrgBouncycastleAsn1X509AlgorithmIdentifier *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CmpPBMParameter, iterationCount_, OrgBouncycastleAsn1ASN1Integer *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CmpPBMParameter, mac_, OrgBouncycastleAsn1X509AlgorithmIdentifier *)

@implementation OrgBouncycastleAsn1CmpPBMParameter

- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq {
  if (self = [super init]) {
    salt_ = OrgBouncycastleAsn1ASN1OctetString_getInstanceWithId_([((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(seq)) getObjectAtWithInt:0]);
    owf_ = OrgBouncycastleAsn1X509AlgorithmIdentifier_getInstanceWithId_([seq getObjectAtWithInt:1]);
    iterationCount_ = OrgBouncycastleAsn1ASN1Integer_getInstanceWithId_([seq getObjectAtWithInt:2]);
    mac_ = OrgBouncycastleAsn1X509AlgorithmIdentifier_getInstanceWithId_([seq getObjectAtWithInt:3]);
  }
  return self;
}

+ (OrgBouncycastleAsn1CmpPBMParameter *)getInstanceWithId:(id)o {
  return OrgBouncycastleAsn1CmpPBMParameter_getInstanceWithId_(o);
}

- (instancetype)initWithByteArray:(IOSByteArray *)salt
withOrgBouncycastleAsn1X509AlgorithmIdentifier:(OrgBouncycastleAsn1X509AlgorithmIdentifier *)owf
                          withInt:(jint)iterationCount
withOrgBouncycastleAsn1X509AlgorithmIdentifier:(OrgBouncycastleAsn1X509AlgorithmIdentifier *)mac {
  return [self initOrgBouncycastleAsn1CmpPBMParameterWithOrgBouncycastleAsn1ASN1OctetString:[[OrgBouncycastleAsn1DEROctetString alloc] initWithByteArray:salt] withOrgBouncycastleAsn1X509AlgorithmIdentifier:owf withOrgBouncycastleAsn1ASN1Integer:[[OrgBouncycastleAsn1ASN1Integer alloc] initWithLong:iterationCount] withOrgBouncycastleAsn1X509AlgorithmIdentifier:mac];
}

- (instancetype)initOrgBouncycastleAsn1CmpPBMParameterWithOrgBouncycastleAsn1ASN1OctetString:(OrgBouncycastleAsn1ASN1OctetString *)salt
                                              withOrgBouncycastleAsn1X509AlgorithmIdentifier:(OrgBouncycastleAsn1X509AlgorithmIdentifier *)owf
                                                          withOrgBouncycastleAsn1ASN1Integer:(OrgBouncycastleAsn1ASN1Integer *)iterationCount
                                              withOrgBouncycastleAsn1X509AlgorithmIdentifier:(OrgBouncycastleAsn1X509AlgorithmIdentifier *)mac {
  if (self = [super init]) {
    self->salt_ = salt;
    self->owf_ = owf;
    self->iterationCount_ = iterationCount;
    self->mac_ = mac;
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1OctetString:(OrgBouncycastleAsn1ASN1OctetString *)salt
            withOrgBouncycastleAsn1X509AlgorithmIdentifier:(OrgBouncycastleAsn1X509AlgorithmIdentifier *)owf
                        withOrgBouncycastleAsn1ASN1Integer:(OrgBouncycastleAsn1ASN1Integer *)iterationCount
            withOrgBouncycastleAsn1X509AlgorithmIdentifier:(OrgBouncycastleAsn1X509AlgorithmIdentifier *)mac {
  return [self initOrgBouncycastleAsn1CmpPBMParameterWithOrgBouncycastleAsn1ASN1OctetString:salt withOrgBouncycastleAsn1X509AlgorithmIdentifier:owf withOrgBouncycastleAsn1ASN1Integer:iterationCount withOrgBouncycastleAsn1X509AlgorithmIdentifier:mac];
}

- (OrgBouncycastleAsn1ASN1OctetString *)getSalt {
  return salt_;
}

- (OrgBouncycastleAsn1X509AlgorithmIdentifier *)getOwf {
  return owf_;
}

- (OrgBouncycastleAsn1ASN1Integer *)getIterationCount {
  return iterationCount_;
}

- (OrgBouncycastleAsn1X509AlgorithmIdentifier *)getMac {
  return mac_;
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  OrgBouncycastleAsn1ASN1EncodableVector *v = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:salt_];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:owf_];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:iterationCount_];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:mac_];
  return [[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:v];
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1CmpPBMParameter *)other {
  [super copyAllFieldsTo:other];
  other->salt_ = salt_;
  other->owf_ = owf_;
  other->iterationCount_ = iterationCount_;
  other->mac_ = mac_;
}

@end

OrgBouncycastleAsn1CmpPBMParameter *OrgBouncycastleAsn1CmpPBMParameter_getInstanceWithId_(id o) {
  OrgBouncycastleAsn1CmpPBMParameter_init();
  if ([o isKindOfClass:[OrgBouncycastleAsn1CmpPBMParameter class]]) {
    return (OrgBouncycastleAsn1CmpPBMParameter *) check_class_cast(o, [OrgBouncycastleAsn1CmpPBMParameter class]);
  }
  if (o != nil) {
    return [[OrgBouncycastleAsn1CmpPBMParameter alloc] initWithOrgBouncycastleAsn1ASN1Sequence:OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_(o)];
  }
  return nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1CmpPBMParameter)
