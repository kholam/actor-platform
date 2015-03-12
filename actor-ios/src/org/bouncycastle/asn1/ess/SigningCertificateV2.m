//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/ess/SigningCertificateV2.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/bouncycastle/asn1/ASN1Encodable.h"
#include "org/bouncycastle/asn1/ASN1EncodableVector.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1Sequence.h"
#include "org/bouncycastle/asn1/DERSequence.h"
#include "org/bouncycastle/asn1/ess/ESSCertIDv2.h"
#include "org/bouncycastle/asn1/ess/SigningCertificateV2.h"
#include "org/bouncycastle/asn1/x509/PolicyInformation.h"

@interface OrgBouncycastleAsn1EssSigningCertificateV2 ()
- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq;
@end

@implementation OrgBouncycastleAsn1EssSigningCertificateV2

+ (OrgBouncycastleAsn1EssSigningCertificateV2 *)getInstanceWithId:(id)o {
  return OrgBouncycastleAsn1EssSigningCertificateV2_getInstanceWithId_(o);
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq {
  if (self = [super init]) {
    if ([((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(seq)) size] < 1 || [seq size] > 2) {
      @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:JreStrcat("$I", @"Bad sequence size: ", [seq size])];
    }
    self->certs_ = OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_([seq getObjectAtWithInt:0]);
    if ([seq size] > 1) {
      self->policies_ = OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_([seq getObjectAtWithInt:1]);
    }
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleAsn1EssESSCertIDv2:(OrgBouncycastleAsn1EssESSCertIDv2 *)cert {
  if (self = [super init]) {
    self->certs_ = [[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1Encodable:cert];
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleAsn1EssESSCertIDv2Array:(IOSObjectArray *)certs {
  if (self = [super init]) {
    OrgBouncycastleAsn1ASN1EncodableVector *v = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
    for (jint i = 0; i < ((IOSObjectArray *) nil_chk(certs))->size_; i++) {
      [v addWithOrgBouncycastleAsn1ASN1Encodable:IOSObjectArray_Get(certs, i)];
    }
    self->certs_ = [[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:v];
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleAsn1EssESSCertIDv2Array:(IOSObjectArray *)certs
             withOrgBouncycastleAsn1X509PolicyInformationArray:(IOSObjectArray *)policies {
  if (self = [super init]) {
    OrgBouncycastleAsn1ASN1EncodableVector *v = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
    for (jint i = 0; i < ((IOSObjectArray *) nil_chk(certs))->size_; i++) {
      [v addWithOrgBouncycastleAsn1ASN1Encodable:IOSObjectArray_Get(certs, i)];
    }
    self->certs_ = [[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:v];
    if (policies != nil) {
      v = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
      for (jint i = 0; i < policies->size_; i++) {
        [v addWithOrgBouncycastleAsn1ASN1Encodable:IOSObjectArray_Get(policies, i)];
      }
      self->policies_ = [[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:v];
    }
  }
  return self;
}

- (IOSObjectArray *)getCerts {
  IOSObjectArray *certIds = [IOSObjectArray newArrayWithLength:[((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(certs_)) size] type:OrgBouncycastleAsn1EssESSCertIDv2_class_()];
  for (jint i = 0; i != [certs_ size]; i++) {
    IOSObjectArray_Set(certIds, i, OrgBouncycastleAsn1EssESSCertIDv2_getInstanceWithId_([certs_ getObjectAtWithInt:i]));
  }
  return certIds;
}

- (IOSObjectArray *)getPolicies {
  if (policies_ == nil) {
    return nil;
  }
  IOSObjectArray *policyInformations = [IOSObjectArray newArrayWithLength:[((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(policies_)) size] type:OrgBouncycastleAsn1X509PolicyInformation_class_()];
  for (jint i = 0; i != [policies_ size]; i++) {
    IOSObjectArray_Set(policyInformations, i, OrgBouncycastleAsn1X509PolicyInformation_getInstanceWithId_([policies_ getObjectAtWithInt:i]));
  }
  return policyInformations;
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  OrgBouncycastleAsn1ASN1EncodableVector *v = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:certs_];
  if (policies_ != nil) {
    [v addWithOrgBouncycastleAsn1ASN1Encodable:policies_];
  }
  return [[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:v];
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1EssSigningCertificateV2 *)other {
  [super copyAllFieldsTo:other];
  other->certs_ = certs_;
  other->policies_ = policies_;
}

@end

OrgBouncycastleAsn1EssSigningCertificateV2 *OrgBouncycastleAsn1EssSigningCertificateV2_getInstanceWithId_(id o) {
  OrgBouncycastleAsn1EssSigningCertificateV2_init();
  if (o == nil || [o isKindOfClass:[OrgBouncycastleAsn1EssSigningCertificateV2 class]]) {
    return (OrgBouncycastleAsn1EssSigningCertificateV2 *) check_class_cast(o, [OrgBouncycastleAsn1EssSigningCertificateV2 class]);
  }
  else if ([o isKindOfClass:[OrgBouncycastleAsn1ASN1Sequence class]]) {
    return [[OrgBouncycastleAsn1EssSigningCertificateV2 alloc] initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *) check_class_cast(o, [OrgBouncycastleAsn1ASN1Sequence class])];
  }
  return nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1EssSigningCertificateV2)
