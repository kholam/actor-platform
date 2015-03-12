//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/x509/V2TBSCertListGenerator.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "org/bouncycastle/asn1/ASN1EncodableVector.h"
#include "org/bouncycastle/asn1/ASN1GeneralizedTime.h"
#include "org/bouncycastle/asn1/ASN1Integer.h"
#include "org/bouncycastle/asn1/ASN1ObjectIdentifier.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1Sequence.h"
#include "org/bouncycastle/asn1/ASN1UTCTime.h"
#include "org/bouncycastle/asn1/DEROctetString.h"
#include "org/bouncycastle/asn1/DERSequence.h"
#include "org/bouncycastle/asn1/DERTaggedObject.h"
#include "org/bouncycastle/asn1/x500/X500Name.h"
#include "org/bouncycastle/asn1/x509/AlgorithmIdentifier.h"
#include "org/bouncycastle/asn1/x509/CRLReason.h"
#include "org/bouncycastle/asn1/x509/Extension.h"
#include "org/bouncycastle/asn1/x509/Extensions.h"
#include "org/bouncycastle/asn1/x509/TBSCertList.h"
#include "org/bouncycastle/asn1/x509/Time.h"
#include "org/bouncycastle/asn1/x509/V2TBSCertListGenerator.h"
#include "org/bouncycastle/asn1/x509/X509Extensions.h"
#include "org/bouncycastle/asn1/x509/X509Name.h"

__attribute__((unused)) static void OrgBouncycastleAsn1X509V2TBSCertListGenerator_internalAddCRLEntryWithOrgBouncycastleAsn1ASN1Integer_withOrgBouncycastleAsn1X509Time_withOrgBouncycastleAsn1ASN1Sequence_(OrgBouncycastleAsn1X509V2TBSCertListGenerator *self, OrgBouncycastleAsn1ASN1Integer *userCertificate, OrgBouncycastleAsn1X509Time *revocationDate, OrgBouncycastleAsn1ASN1Sequence *extensions);
__attribute__((unused)) static OrgBouncycastleAsn1ASN1Sequence *OrgBouncycastleAsn1X509V2TBSCertListGenerator_createReasonExtensionWithInt_(jint reasonCode);
__attribute__((unused)) static OrgBouncycastleAsn1ASN1Sequence *OrgBouncycastleAsn1X509V2TBSCertListGenerator_createInvalidityDateExtensionWithOrgBouncycastleAsn1ASN1GeneralizedTime_(OrgBouncycastleAsn1ASN1GeneralizedTime *invalidityDate);

@interface OrgBouncycastleAsn1X509V2TBSCertListGenerator () {
 @public
  OrgBouncycastleAsn1ASN1Integer *version__;
  OrgBouncycastleAsn1X509AlgorithmIdentifier *signature_;
  OrgBouncycastleAsn1X500X500Name *issuer_;
  OrgBouncycastleAsn1X509Time *thisUpdate_, *nextUpdate_;
  OrgBouncycastleAsn1X509Extensions *extensions_;
  OrgBouncycastleAsn1ASN1EncodableVector *crlentries_;
}

- (void)internalAddCRLEntryWithOrgBouncycastleAsn1ASN1Integer:(OrgBouncycastleAsn1ASN1Integer *)userCertificate
                              withOrgBouncycastleAsn1X509Time:(OrgBouncycastleAsn1X509Time *)revocationDate
                          withOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)extensions;

+ (OrgBouncycastleAsn1ASN1Sequence *)createReasonExtensionWithInt:(jint)reasonCode;

+ (OrgBouncycastleAsn1ASN1Sequence *)createInvalidityDateExtensionWithOrgBouncycastleAsn1ASN1GeneralizedTime:(OrgBouncycastleAsn1ASN1GeneralizedTime *)invalidityDate;
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1X509V2TBSCertListGenerator, version__, OrgBouncycastleAsn1ASN1Integer *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1X509V2TBSCertListGenerator, signature_, OrgBouncycastleAsn1X509AlgorithmIdentifier *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1X509V2TBSCertListGenerator, issuer_, OrgBouncycastleAsn1X500X500Name *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1X509V2TBSCertListGenerator, thisUpdate_, OrgBouncycastleAsn1X509Time *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1X509V2TBSCertListGenerator, nextUpdate_, OrgBouncycastleAsn1X509Time *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1X509V2TBSCertListGenerator, extensions_, OrgBouncycastleAsn1X509Extensions *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1X509V2TBSCertListGenerator, crlentries_, OrgBouncycastleAsn1ASN1EncodableVector *)

BOOL OrgBouncycastleAsn1X509V2TBSCertListGenerator_initialized = NO;

@implementation OrgBouncycastleAsn1X509V2TBSCertListGenerator

IOSObjectArray * OrgBouncycastleAsn1X509V2TBSCertListGenerator_reasons_;

- (instancetype)init {
  if (self = [super init]) {
    version__ = [[OrgBouncycastleAsn1ASN1Integer alloc] initWithLong:1];
    nextUpdate_ = nil;
    extensions_ = nil;
    crlentries_ = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
  }
  return self;
}

- (void)setSignatureWithOrgBouncycastleAsn1X509AlgorithmIdentifier:(OrgBouncycastleAsn1X509AlgorithmIdentifier *)signature {
  self->signature_ = signature;
}

- (void)setIssuerWithOrgBouncycastleAsn1X509X509Name:(OrgBouncycastleAsn1X509X509Name *)issuer {
  self->issuer_ = OrgBouncycastleAsn1X500X500Name_getInstanceWithId_([((OrgBouncycastleAsn1X509X509Name *) nil_chk(issuer)) toASN1Primitive]);
}

- (void)setIssuerWithOrgBouncycastleAsn1X500X500Name:(OrgBouncycastleAsn1X500X500Name *)issuer {
  self->issuer_ = issuer;
}

- (void)setThisUpdateWithOrgBouncycastleAsn1ASN1UTCTime:(OrgBouncycastleAsn1ASN1UTCTime *)thisUpdate {
  self->thisUpdate_ = [[OrgBouncycastleAsn1X509Time alloc] initWithOrgBouncycastleAsn1ASN1Primitive:thisUpdate];
}

- (void)setNextUpdateWithOrgBouncycastleAsn1ASN1UTCTime:(OrgBouncycastleAsn1ASN1UTCTime *)nextUpdate {
  self->nextUpdate_ = [[OrgBouncycastleAsn1X509Time alloc] initWithOrgBouncycastleAsn1ASN1Primitive:nextUpdate];
}

- (void)setThisUpdateWithOrgBouncycastleAsn1X509Time:(OrgBouncycastleAsn1X509Time *)thisUpdate {
  self->thisUpdate_ = thisUpdate;
}

- (void)setNextUpdateWithOrgBouncycastleAsn1X509Time:(OrgBouncycastleAsn1X509Time *)nextUpdate {
  self->nextUpdate_ = nextUpdate;
}

- (void)addCRLEntryWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)crlEntry {
  [((OrgBouncycastleAsn1ASN1EncodableVector *) nil_chk(crlentries_)) addWithOrgBouncycastleAsn1ASN1Encodable:crlEntry];
}

- (void)addCRLEntryWithOrgBouncycastleAsn1ASN1Integer:(OrgBouncycastleAsn1ASN1Integer *)userCertificate
                   withOrgBouncycastleAsn1ASN1UTCTime:(OrgBouncycastleAsn1ASN1UTCTime *)revocationDate
                                              withInt:(jint)reason {
  [self addCRLEntryWithOrgBouncycastleAsn1ASN1Integer:userCertificate withOrgBouncycastleAsn1X509Time:[[OrgBouncycastleAsn1X509Time alloc] initWithOrgBouncycastleAsn1ASN1Primitive:revocationDate] withInt:reason];
}

- (void)addCRLEntryWithOrgBouncycastleAsn1ASN1Integer:(OrgBouncycastleAsn1ASN1Integer *)userCertificate
                      withOrgBouncycastleAsn1X509Time:(OrgBouncycastleAsn1X509Time *)revocationDate
                                              withInt:(jint)reason {
  [self addCRLEntryWithOrgBouncycastleAsn1ASN1Integer:userCertificate withOrgBouncycastleAsn1X509Time:revocationDate withInt:reason withOrgBouncycastleAsn1ASN1GeneralizedTime:nil];
}

- (void)addCRLEntryWithOrgBouncycastleAsn1ASN1Integer:(OrgBouncycastleAsn1ASN1Integer *)userCertificate
                      withOrgBouncycastleAsn1X509Time:(OrgBouncycastleAsn1X509Time *)revocationDate
                                              withInt:(jint)reason
           withOrgBouncycastleAsn1ASN1GeneralizedTime:(OrgBouncycastleAsn1ASN1GeneralizedTime *)invalidityDate {
  if (reason != 0) {
    OrgBouncycastleAsn1ASN1EncodableVector *v = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
    if (reason < ((IOSObjectArray *) nil_chk(OrgBouncycastleAsn1X509V2TBSCertListGenerator_reasons_))->size_) {
      if (reason < 0) {
        @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:JreStrcat("$I", @"invalid reason value: ", reason)];
      }
      [v addWithOrgBouncycastleAsn1ASN1Encodable:IOSObjectArray_Get(OrgBouncycastleAsn1X509V2TBSCertListGenerator_reasons_, reason)];
    }
    else {
      [v addWithOrgBouncycastleAsn1ASN1Encodable:OrgBouncycastleAsn1X509V2TBSCertListGenerator_createReasonExtensionWithInt_(reason)];
    }
    if (invalidityDate != nil) {
      [v addWithOrgBouncycastleAsn1ASN1Encodable:OrgBouncycastleAsn1X509V2TBSCertListGenerator_createInvalidityDateExtensionWithOrgBouncycastleAsn1ASN1GeneralizedTime_(invalidityDate)];
    }
    OrgBouncycastleAsn1X509V2TBSCertListGenerator_internalAddCRLEntryWithOrgBouncycastleAsn1ASN1Integer_withOrgBouncycastleAsn1X509Time_withOrgBouncycastleAsn1ASN1Sequence_(self, userCertificate, revocationDate, [[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:v]);
  }
  else if (invalidityDate != nil) {
    OrgBouncycastleAsn1ASN1EncodableVector *v = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
    [v addWithOrgBouncycastleAsn1ASN1Encodable:OrgBouncycastleAsn1X509V2TBSCertListGenerator_createInvalidityDateExtensionWithOrgBouncycastleAsn1ASN1GeneralizedTime_(invalidityDate)];
    OrgBouncycastleAsn1X509V2TBSCertListGenerator_internalAddCRLEntryWithOrgBouncycastleAsn1ASN1Integer_withOrgBouncycastleAsn1X509Time_withOrgBouncycastleAsn1ASN1Sequence_(self, userCertificate, revocationDate, [[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:v]);
  }
  else {
    [self addCRLEntryWithOrgBouncycastleAsn1ASN1Integer:userCertificate withOrgBouncycastleAsn1X509Time:revocationDate withOrgBouncycastleAsn1X509Extensions:nil];
  }
}

- (void)internalAddCRLEntryWithOrgBouncycastleAsn1ASN1Integer:(OrgBouncycastleAsn1ASN1Integer *)userCertificate
                              withOrgBouncycastleAsn1X509Time:(OrgBouncycastleAsn1X509Time *)revocationDate
                          withOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)extensions {
  OrgBouncycastleAsn1X509V2TBSCertListGenerator_internalAddCRLEntryWithOrgBouncycastleAsn1ASN1Integer_withOrgBouncycastleAsn1X509Time_withOrgBouncycastleAsn1ASN1Sequence_(self, userCertificate, revocationDate, extensions);
}

- (void)addCRLEntryWithOrgBouncycastleAsn1ASN1Integer:(OrgBouncycastleAsn1ASN1Integer *)userCertificate
                      withOrgBouncycastleAsn1X509Time:(OrgBouncycastleAsn1X509Time *)revocationDate
                withOrgBouncycastleAsn1X509Extensions:(OrgBouncycastleAsn1X509Extensions *)extensions {
  OrgBouncycastleAsn1ASN1EncodableVector *v = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:userCertificate];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:revocationDate];
  if (extensions != nil) {
    [v addWithOrgBouncycastleAsn1ASN1Encodable:extensions];
  }
  [self addCRLEntryWithOrgBouncycastleAsn1ASN1Sequence:[[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:v]];
}

- (void)setExtensionsWithOrgBouncycastleAsn1X509X509Extensions:(OrgBouncycastleAsn1X509X509Extensions *)extensions {
  [self setExtensionsWithOrgBouncycastleAsn1X509Extensions:OrgBouncycastleAsn1X509Extensions_getInstanceWithId_(extensions)];
}

- (void)setExtensionsWithOrgBouncycastleAsn1X509Extensions:(OrgBouncycastleAsn1X509Extensions *)extensions {
  self->extensions_ = extensions;
}

- (OrgBouncycastleAsn1X509TBSCertList *)generateTBSCertList {
  if ((signature_ == nil) || (issuer_ == nil) || (thisUpdate_ == nil)) {
    @throw [[JavaLangIllegalStateException alloc] initWithNSString:@"Not all mandatory fields set in V2 TBSCertList generator."];
  }
  OrgBouncycastleAsn1ASN1EncodableVector *v = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:version__];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:signature_];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:issuer_];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:thisUpdate_];
  if (nextUpdate_ != nil) {
    [v addWithOrgBouncycastleAsn1ASN1Encodable:nextUpdate_];
  }
  if ([((OrgBouncycastleAsn1ASN1EncodableVector *) nil_chk(crlentries_)) size] != 0) {
    [v addWithOrgBouncycastleAsn1ASN1Encodable:[[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:crlentries_]];
  }
  if (extensions_ != nil) {
    [v addWithOrgBouncycastleAsn1ASN1Encodable:[[OrgBouncycastleAsn1DERTaggedObject alloc] initWithInt:0 withOrgBouncycastleAsn1ASN1Encodable:extensions_]];
  }
  return [[OrgBouncycastleAsn1X509TBSCertList alloc] initWithOrgBouncycastleAsn1ASN1Sequence:[[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:v]];
}

+ (OrgBouncycastleAsn1ASN1Sequence *)createReasonExtensionWithInt:(jint)reasonCode {
  return OrgBouncycastleAsn1X509V2TBSCertListGenerator_createReasonExtensionWithInt_(reasonCode);
}

+ (OrgBouncycastleAsn1ASN1Sequence *)createInvalidityDateExtensionWithOrgBouncycastleAsn1ASN1GeneralizedTime:(OrgBouncycastleAsn1ASN1GeneralizedTime *)invalidityDate {
  return OrgBouncycastleAsn1X509V2TBSCertListGenerator_createInvalidityDateExtensionWithOrgBouncycastleAsn1ASN1GeneralizedTime_(invalidityDate);
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1X509V2TBSCertListGenerator *)other {
  [super copyAllFieldsTo:other];
  other->version__ = version__;
  other->signature_ = signature_;
  other->issuer_ = issuer_;
  other->thisUpdate_ = thisUpdate_;
  other->nextUpdate_ = nextUpdate_;
  other->extensions_ = extensions_;
  other->crlentries_ = crlentries_;
}

+ (void)initialize {
  if (self == [OrgBouncycastleAsn1X509V2TBSCertListGenerator class]) {
    {
      OrgBouncycastleAsn1X509V2TBSCertListGenerator_reasons_ = [IOSObjectArray newArrayWithLength:11 type:OrgBouncycastleAsn1ASN1Sequence_class_()];
      IOSObjectArray_Set(OrgBouncycastleAsn1X509V2TBSCertListGenerator_reasons_, 0, OrgBouncycastleAsn1X509V2TBSCertListGenerator_createReasonExtensionWithInt_(OrgBouncycastleAsn1X509CRLReason_unspecified));
      IOSObjectArray_Set(OrgBouncycastleAsn1X509V2TBSCertListGenerator_reasons_, 1, OrgBouncycastleAsn1X509V2TBSCertListGenerator_createReasonExtensionWithInt_(OrgBouncycastleAsn1X509CRLReason_keyCompromise));
      IOSObjectArray_Set(OrgBouncycastleAsn1X509V2TBSCertListGenerator_reasons_, 2, OrgBouncycastleAsn1X509V2TBSCertListGenerator_createReasonExtensionWithInt_(OrgBouncycastleAsn1X509CRLReason_cACompromise));
      IOSObjectArray_Set(OrgBouncycastleAsn1X509V2TBSCertListGenerator_reasons_, 3, OrgBouncycastleAsn1X509V2TBSCertListGenerator_createReasonExtensionWithInt_(OrgBouncycastleAsn1X509CRLReason_affiliationChanged));
      IOSObjectArray_Set(OrgBouncycastleAsn1X509V2TBSCertListGenerator_reasons_, 4, OrgBouncycastleAsn1X509V2TBSCertListGenerator_createReasonExtensionWithInt_(OrgBouncycastleAsn1X509CRLReason_superseded));
      IOSObjectArray_Set(OrgBouncycastleAsn1X509V2TBSCertListGenerator_reasons_, 5, OrgBouncycastleAsn1X509V2TBSCertListGenerator_createReasonExtensionWithInt_(OrgBouncycastleAsn1X509CRLReason_cessationOfOperation));
      IOSObjectArray_Set(OrgBouncycastleAsn1X509V2TBSCertListGenerator_reasons_, 6, OrgBouncycastleAsn1X509V2TBSCertListGenerator_createReasonExtensionWithInt_(OrgBouncycastleAsn1X509CRLReason_certificateHold));
      IOSObjectArray_Set(OrgBouncycastleAsn1X509V2TBSCertListGenerator_reasons_, 7, OrgBouncycastleAsn1X509V2TBSCertListGenerator_createReasonExtensionWithInt_(7));
      IOSObjectArray_Set(OrgBouncycastleAsn1X509V2TBSCertListGenerator_reasons_, 8, OrgBouncycastleAsn1X509V2TBSCertListGenerator_createReasonExtensionWithInt_(OrgBouncycastleAsn1X509CRLReason_removeFromCRL));
      IOSObjectArray_Set(OrgBouncycastleAsn1X509V2TBSCertListGenerator_reasons_, 9, OrgBouncycastleAsn1X509V2TBSCertListGenerator_createReasonExtensionWithInt_(OrgBouncycastleAsn1X509CRLReason_privilegeWithdrawn));
      IOSObjectArray_Set(OrgBouncycastleAsn1X509V2TBSCertListGenerator_reasons_, 10, OrgBouncycastleAsn1X509V2TBSCertListGenerator_createReasonExtensionWithInt_(OrgBouncycastleAsn1X509CRLReason_aACompromise));
    }
    J2OBJC_SET_INITIALIZED(OrgBouncycastleAsn1X509V2TBSCertListGenerator)
  }
}

@end

void OrgBouncycastleAsn1X509V2TBSCertListGenerator_internalAddCRLEntryWithOrgBouncycastleAsn1ASN1Integer_withOrgBouncycastleAsn1X509Time_withOrgBouncycastleAsn1ASN1Sequence_(OrgBouncycastleAsn1X509V2TBSCertListGenerator *self, OrgBouncycastleAsn1ASN1Integer *userCertificate, OrgBouncycastleAsn1X509Time *revocationDate, OrgBouncycastleAsn1ASN1Sequence *extensions) {
  OrgBouncycastleAsn1ASN1EncodableVector *v = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:userCertificate];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:revocationDate];
  if (extensions != nil) {
    [v addWithOrgBouncycastleAsn1ASN1Encodable:extensions];
  }
  [self addCRLEntryWithOrgBouncycastleAsn1ASN1Sequence:[[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:v]];
}

OrgBouncycastleAsn1ASN1Sequence *OrgBouncycastleAsn1X509V2TBSCertListGenerator_createReasonExtensionWithInt_(jint reasonCode) {
  OrgBouncycastleAsn1X509V2TBSCertListGenerator_init();
  OrgBouncycastleAsn1ASN1EncodableVector *v = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
  OrgBouncycastleAsn1X509CRLReason *crlReason = OrgBouncycastleAsn1X509CRLReason_lookupWithInt_(reasonCode);
  @try {
    [v addWithOrgBouncycastleAsn1ASN1Encodable:OrgBouncycastleAsn1X509Extension_get_reasonCode_()];
    [v addWithOrgBouncycastleAsn1ASN1Encodable:[[OrgBouncycastleAsn1DEROctetString alloc] initWithByteArray:[((OrgBouncycastleAsn1X509CRLReason *) nil_chk(crlReason)) getEncoded]]];
  }
  @catch (JavaIoIOException *e) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:JreStrcat("$@", @"error encoding reason: ", e)];
  }
  return [[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:v];
}

OrgBouncycastleAsn1ASN1Sequence *OrgBouncycastleAsn1X509V2TBSCertListGenerator_createInvalidityDateExtensionWithOrgBouncycastleAsn1ASN1GeneralizedTime_(OrgBouncycastleAsn1ASN1GeneralizedTime *invalidityDate) {
  OrgBouncycastleAsn1X509V2TBSCertListGenerator_init();
  OrgBouncycastleAsn1ASN1EncodableVector *v = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
  @try {
    [v addWithOrgBouncycastleAsn1ASN1Encodable:OrgBouncycastleAsn1X509Extension_get_invalidityDate_()];
    [v addWithOrgBouncycastleAsn1ASN1Encodable:[[OrgBouncycastleAsn1DEROctetString alloc] initWithByteArray:[((OrgBouncycastleAsn1ASN1GeneralizedTime *) nil_chk(invalidityDate)) getEncoded]]];
  }
  @catch (JavaIoIOException *e) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:JreStrcat("$@", @"error encoding reason: ", e)];
  }
  return [[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:v];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1X509V2TBSCertListGenerator)
