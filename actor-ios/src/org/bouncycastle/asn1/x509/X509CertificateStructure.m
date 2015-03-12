//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/x509/X509CertificateStructure.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/bouncycastle/asn1/ASN1Encodable.h"
#include "org/bouncycastle/asn1/ASN1Integer.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1Sequence.h"
#include "org/bouncycastle/asn1/ASN1TaggedObject.h"
#include "org/bouncycastle/asn1/DERBitString.h"
#include "org/bouncycastle/asn1/x500/X500Name.h"
#include "org/bouncycastle/asn1/x509/AlgorithmIdentifier.h"
#include "org/bouncycastle/asn1/x509/SubjectPublicKeyInfo.h"
#include "org/bouncycastle/asn1/x509/TBSCertificateStructure.h"
#include "org/bouncycastle/asn1/x509/Time.h"
#include "org/bouncycastle/asn1/x509/X509CertificateStructure.h"

@implementation OrgBouncycastleAsn1X509X509CertificateStructure

+ (OrgBouncycastleAsn1X509X509CertificateStructure *)getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject:(OrgBouncycastleAsn1ASN1TaggedObject *)obj
                                                                                            withBoolean:(jboolean)explicit_ {
  return OrgBouncycastleAsn1X509X509CertificateStructure_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(obj, explicit_);
}

+ (OrgBouncycastleAsn1X509X509CertificateStructure *)getInstanceWithId:(id)obj {
  return OrgBouncycastleAsn1X509X509CertificateStructure_getInstanceWithId_(obj);
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq {
  if (self = [super init]) {
    self->seq_ = seq;
    if ([((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(seq)) size] == 3) {
      tbsCert_ = OrgBouncycastleAsn1X509TBSCertificateStructure_getInstanceWithId_([seq getObjectAtWithInt:0]);
      sigAlgId_ = OrgBouncycastleAsn1X509AlgorithmIdentifier_getInstanceWithId_([seq getObjectAtWithInt:1]);
      sig_ = OrgBouncycastleAsn1DERBitString_getInstanceWithId_([seq getObjectAtWithInt:2]);
    }
    else {
      @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"sequence wrong size for a certificate"];
    }
  }
  return self;
}

- (OrgBouncycastleAsn1X509TBSCertificateStructure *)getTBSCertificate {
  return tbsCert_;
}

- (jint)getVersion {
  return [((OrgBouncycastleAsn1X509TBSCertificateStructure *) nil_chk(tbsCert_)) getVersion];
}

- (OrgBouncycastleAsn1ASN1Integer *)getSerialNumber {
  return [((OrgBouncycastleAsn1X509TBSCertificateStructure *) nil_chk(tbsCert_)) getSerialNumber];
}

- (OrgBouncycastleAsn1X500X500Name *)getIssuer {
  return [((OrgBouncycastleAsn1X509TBSCertificateStructure *) nil_chk(tbsCert_)) getIssuer];
}

- (OrgBouncycastleAsn1X509Time *)getStartDate {
  return [((OrgBouncycastleAsn1X509TBSCertificateStructure *) nil_chk(tbsCert_)) getStartDate];
}

- (OrgBouncycastleAsn1X509Time *)getEndDate {
  return [((OrgBouncycastleAsn1X509TBSCertificateStructure *) nil_chk(tbsCert_)) getEndDate];
}

- (OrgBouncycastleAsn1X500X500Name *)getSubject {
  return [((OrgBouncycastleAsn1X509TBSCertificateStructure *) nil_chk(tbsCert_)) getSubject];
}

- (OrgBouncycastleAsn1X509SubjectPublicKeyInfo *)getSubjectPublicKeyInfo {
  return [((OrgBouncycastleAsn1X509TBSCertificateStructure *) nil_chk(tbsCert_)) getSubjectPublicKeyInfo];
}

- (OrgBouncycastleAsn1X509AlgorithmIdentifier *)getSignatureAlgorithm {
  return sigAlgId_;
}

- (OrgBouncycastleAsn1DERBitString *)getSignature {
  return sig_;
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  return seq_;
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1X509X509CertificateStructure *)other {
  [super copyAllFieldsTo:other];
  other->seq_ = seq_;
  other->tbsCert_ = tbsCert_;
  other->sigAlgId_ = sigAlgId_;
  other->sig_ = sig_;
}

@end

OrgBouncycastleAsn1X509X509CertificateStructure *OrgBouncycastleAsn1X509X509CertificateStructure_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(OrgBouncycastleAsn1ASN1TaggedObject *obj, jboolean explicit_) {
  OrgBouncycastleAsn1X509X509CertificateStructure_init();
  return OrgBouncycastleAsn1X509X509CertificateStructure_getInstanceWithId_(OrgBouncycastleAsn1ASN1Sequence_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(obj, explicit_));
}

OrgBouncycastleAsn1X509X509CertificateStructure *OrgBouncycastleAsn1X509X509CertificateStructure_getInstanceWithId_(id obj) {
  OrgBouncycastleAsn1X509X509CertificateStructure_init();
  if ([obj isKindOfClass:[OrgBouncycastleAsn1X509X509CertificateStructure class]]) {
    return (OrgBouncycastleAsn1X509X509CertificateStructure *) check_class_cast(obj, [OrgBouncycastleAsn1X509X509CertificateStructure class]);
  }
  else if (obj != nil) {
    return [[OrgBouncycastleAsn1X509X509CertificateStructure alloc] initWithOrgBouncycastleAsn1ASN1Sequence:OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_(obj)];
  }
  return nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1X509X509CertificateStructure)
