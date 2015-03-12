//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "org/bouncycastle/asn1/ASN1EncodableVector.h"
#include "org/bouncycastle/asn1/ASN1Integer.h"
#include "org/bouncycastle/asn1/ASN1Sequence.h"
#include "org/bouncycastle/asn1/ASN1Set.h"
#include "org/bouncycastle/asn1/DERSequence.h"
#include "org/bouncycastle/asn1/DERTaggedObject.h"
#include "org/bouncycastle/asn1/cmp/PKIStatusInfo.h"
#include "org/bouncycastle/asn1/dvcs/DVCSCertInfo.h"
#include "org/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder.h"
#include "org/bouncycastle/asn1/dvcs/DVCSRequestInformation.h"
#include "org/bouncycastle/asn1/dvcs/DVCSTime.h"
#include "org/bouncycastle/asn1/x509/DigestInfo.h"
#include "org/bouncycastle/asn1/x509/Extensions.h"
#include "org/bouncycastle/asn1/x509/PolicyInformation.h"

@interface OrgBouncycastleAsn1DvcsDVCSCertInfoBuilder () {
 @public
  jint version__;
  OrgBouncycastleAsn1DvcsDVCSRequestInformation *dvReqInfo_;
  OrgBouncycastleAsn1X509DigestInfo *messageImprint_;
  OrgBouncycastleAsn1ASN1Integer *serialNumber_;
  OrgBouncycastleAsn1DvcsDVCSTime *responseTime_;
  OrgBouncycastleAsn1CmpPKIStatusInfo *dvStatus_;
  OrgBouncycastleAsn1X509PolicyInformation *policy_;
  OrgBouncycastleAsn1ASN1Set *reqSignature_;
  OrgBouncycastleAsn1ASN1Sequence *certs_;
  OrgBouncycastleAsn1X509Extensions *extensions_;
}
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1DvcsDVCSCertInfoBuilder, dvReqInfo_, OrgBouncycastleAsn1DvcsDVCSRequestInformation *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1DvcsDVCSCertInfoBuilder, messageImprint_, OrgBouncycastleAsn1X509DigestInfo *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1DvcsDVCSCertInfoBuilder, serialNumber_, OrgBouncycastleAsn1ASN1Integer *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1DvcsDVCSCertInfoBuilder, responseTime_, OrgBouncycastleAsn1DvcsDVCSTime *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1DvcsDVCSCertInfoBuilder, dvStatus_, OrgBouncycastleAsn1CmpPKIStatusInfo *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1DvcsDVCSCertInfoBuilder, policy_, OrgBouncycastleAsn1X509PolicyInformation *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1DvcsDVCSCertInfoBuilder, reqSignature_, OrgBouncycastleAsn1ASN1Set *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1DvcsDVCSCertInfoBuilder, certs_, OrgBouncycastleAsn1ASN1Sequence *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1DvcsDVCSCertInfoBuilder, extensions_, OrgBouncycastleAsn1X509Extensions *)

@implementation OrgBouncycastleAsn1DvcsDVCSCertInfoBuilder

- (instancetype)initWithOrgBouncycastleAsn1DvcsDVCSRequestInformation:(OrgBouncycastleAsn1DvcsDVCSRequestInformation *)dvReqInfo
                                withOrgBouncycastleAsn1X509DigestInfo:(OrgBouncycastleAsn1X509DigestInfo *)messageImprint
                                   withOrgBouncycastleAsn1ASN1Integer:(OrgBouncycastleAsn1ASN1Integer *)serialNumber
                                  withOrgBouncycastleAsn1DvcsDVCSTime:(OrgBouncycastleAsn1DvcsDVCSTime *)responseTime {
  if (self = [super init]) {
    version__ = OrgBouncycastleAsn1DvcsDVCSCertInfoBuilder_DEFAULT_VERSION;
    self->dvReqInfo_ = dvReqInfo;
    self->messageImprint_ = messageImprint;
    self->serialNumber_ = serialNumber;
    self->responseTime_ = responseTime;
  }
  return self;
}

- (OrgBouncycastleAsn1DvcsDVCSCertInfo *)build {
  OrgBouncycastleAsn1ASN1EncodableVector *v = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
  if (version__ != OrgBouncycastleAsn1DvcsDVCSCertInfoBuilder_DEFAULT_VERSION) {
    [v addWithOrgBouncycastleAsn1ASN1Encodable:[[OrgBouncycastleAsn1ASN1Integer alloc] initWithLong:version__]];
  }
  [v addWithOrgBouncycastleAsn1ASN1Encodable:dvReqInfo_];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:messageImprint_];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:serialNumber_];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:responseTime_];
  if (dvStatus_ != nil) {
    [v addWithOrgBouncycastleAsn1ASN1Encodable:[[OrgBouncycastleAsn1DERTaggedObject alloc] initWithBoolean:NO withInt:OrgBouncycastleAsn1DvcsDVCSCertInfoBuilder_TAG_DV_STATUS withOrgBouncycastleAsn1ASN1Encodable:dvStatus_]];
  }
  if (policy_ != nil) {
    [v addWithOrgBouncycastleAsn1ASN1Encodable:[[OrgBouncycastleAsn1DERTaggedObject alloc] initWithBoolean:NO withInt:OrgBouncycastleAsn1DvcsDVCSCertInfoBuilder_TAG_POLICY withOrgBouncycastleAsn1ASN1Encodable:policy_]];
  }
  if (reqSignature_ != nil) {
    [v addWithOrgBouncycastleAsn1ASN1Encodable:[[OrgBouncycastleAsn1DERTaggedObject alloc] initWithBoolean:NO withInt:OrgBouncycastleAsn1DvcsDVCSCertInfoBuilder_TAG_REQ_SIGNATURE withOrgBouncycastleAsn1ASN1Encodable:reqSignature_]];
  }
  if (certs_ != nil) {
    [v addWithOrgBouncycastleAsn1ASN1Encodable:[[OrgBouncycastleAsn1DERTaggedObject alloc] initWithBoolean:NO withInt:OrgBouncycastleAsn1DvcsDVCSCertInfoBuilder_TAG_CERTS withOrgBouncycastleAsn1ASN1Encodable:certs_]];
  }
  if (extensions_ != nil) {
    [v addWithOrgBouncycastleAsn1ASN1Encodable:extensions_];
  }
  return OrgBouncycastleAsn1DvcsDVCSCertInfo_getInstanceWithId_([[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:v]);
}

- (void)setVersionWithInt:(jint)version_ {
  self->version__ = version_;
}

- (void)setDvReqInfoWithOrgBouncycastleAsn1DvcsDVCSRequestInformation:(OrgBouncycastleAsn1DvcsDVCSRequestInformation *)dvReqInfo {
  self->dvReqInfo_ = dvReqInfo;
}

- (void)setMessageImprintWithOrgBouncycastleAsn1X509DigestInfo:(OrgBouncycastleAsn1X509DigestInfo *)messageImprint {
  self->messageImprint_ = messageImprint;
}

- (void)setSerialNumberWithOrgBouncycastleAsn1ASN1Integer:(OrgBouncycastleAsn1ASN1Integer *)serialNumber {
  self->serialNumber_ = serialNumber;
}

- (void)setResponseTimeWithOrgBouncycastleAsn1DvcsDVCSTime:(OrgBouncycastleAsn1DvcsDVCSTime *)responseTime {
  self->responseTime_ = responseTime;
}

- (void)setDvStatusWithOrgBouncycastleAsn1CmpPKIStatusInfo:(OrgBouncycastleAsn1CmpPKIStatusInfo *)dvStatus {
  self->dvStatus_ = dvStatus;
}

- (void)setPolicyWithOrgBouncycastleAsn1X509PolicyInformation:(OrgBouncycastleAsn1X509PolicyInformation *)policy {
  self->policy_ = policy;
}

- (void)setReqSignatureWithOrgBouncycastleAsn1ASN1Set:(OrgBouncycastleAsn1ASN1Set *)reqSignature {
  self->reqSignature_ = reqSignature;
}

- (void)setCertsWithOrgBouncycastleAsn1DvcsTargetEtcChainArray:(IOSObjectArray *)certs {
  self->certs_ = [[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableArray:certs];
}

- (void)setExtensionsWithOrgBouncycastleAsn1X509Extensions:(OrgBouncycastleAsn1X509Extensions *)extensions {
  self->extensions_ = extensions;
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1DvcsDVCSCertInfoBuilder *)other {
  [super copyAllFieldsTo:other];
  other->version__ = version__;
  other->dvReqInfo_ = dvReqInfo_;
  other->messageImprint_ = messageImprint_;
  other->serialNumber_ = serialNumber_;
  other->responseTime_ = responseTime_;
  other->dvStatus_ = dvStatus_;
  other->policy_ = policy_;
  other->reqSignature_ = reqSignature_;
  other->certs_ = certs_;
  other->extensions_ = extensions_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1DvcsDVCSCertInfoBuilder)
