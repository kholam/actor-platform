//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/BERFactory.java
//

#include "J2ObjC_source.h"
#include "org/bouncycastle/asn1/ASN1EncodableVector.h"
#include "org/bouncycastle/asn1/BERFactory.h"
#include "org/bouncycastle/asn1/BERSequence.h"
#include "org/bouncycastle/asn1/BERSet.h"

BOOL OrgBouncycastleAsn1BERFactory_initialized = NO;

@implementation OrgBouncycastleAsn1BERFactory

OrgBouncycastleAsn1BERSequence * OrgBouncycastleAsn1BERFactory_EMPTY_SEQUENCE_;
OrgBouncycastleAsn1BERSet * OrgBouncycastleAsn1BERFactory_EMPTY_SET_;

+ (OrgBouncycastleAsn1BERSequence *)createSequenceWithOrgBouncycastleAsn1ASN1EncodableVector:(OrgBouncycastleAsn1ASN1EncodableVector *)v {
  return OrgBouncycastleAsn1BERFactory_createSequenceWithOrgBouncycastleAsn1ASN1EncodableVector_(v);
}

+ (OrgBouncycastleAsn1BERSet *)createSetWithOrgBouncycastleAsn1ASN1EncodableVector:(OrgBouncycastleAsn1ASN1EncodableVector *)v {
  return OrgBouncycastleAsn1BERFactory_createSetWithOrgBouncycastleAsn1ASN1EncodableVector_(v);
}

- (instancetype)init {
  return [super init];
}

+ (void)initialize {
  if (self == [OrgBouncycastleAsn1BERFactory class]) {
    OrgBouncycastleAsn1BERFactory_EMPTY_SEQUENCE_ = [[OrgBouncycastleAsn1BERSequence alloc] init];
    OrgBouncycastleAsn1BERFactory_EMPTY_SET_ = [[OrgBouncycastleAsn1BERSet alloc] init];
    J2OBJC_SET_INITIALIZED(OrgBouncycastleAsn1BERFactory)
  }
}

@end

OrgBouncycastleAsn1BERSequence *OrgBouncycastleAsn1BERFactory_createSequenceWithOrgBouncycastleAsn1ASN1EncodableVector_(OrgBouncycastleAsn1ASN1EncodableVector *v) {
  OrgBouncycastleAsn1BERFactory_init();
  return [((OrgBouncycastleAsn1ASN1EncodableVector *) nil_chk(v)) size] < 1 ? OrgBouncycastleAsn1BERFactory_EMPTY_SEQUENCE_ : [[OrgBouncycastleAsn1BERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:v];
}

OrgBouncycastleAsn1BERSet *OrgBouncycastleAsn1BERFactory_createSetWithOrgBouncycastleAsn1ASN1EncodableVector_(OrgBouncycastleAsn1ASN1EncodableVector *v) {
  OrgBouncycastleAsn1BERFactory_init();
  return [((OrgBouncycastleAsn1ASN1EncodableVector *) nil_chk(v)) size] < 1 ? OrgBouncycastleAsn1BERFactory_EMPTY_SET_ : [[OrgBouncycastleAsn1BERSet alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:v];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1BERFactory)
