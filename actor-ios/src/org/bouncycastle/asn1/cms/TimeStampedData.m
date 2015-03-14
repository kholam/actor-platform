//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/cms/TimeStampedData.java
//

#include "J2ObjC_source.h"
#include "org/bouncycastle/asn1/ASN1Encodable.h"
#include "org/bouncycastle/asn1/ASN1EncodableVector.h"
#include "org/bouncycastle/asn1/ASN1Integer.h"
#include "org/bouncycastle/asn1/ASN1OctetString.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1Sequence.h"
#include "org/bouncycastle/asn1/BERSequence.h"
#include "org/bouncycastle/asn1/DERIA5String.h"
#include "org/bouncycastle/asn1/cms/Evidence.h"
#include "org/bouncycastle/asn1/cms/MetaData.h"
#include "org/bouncycastle/asn1/cms/TimeStampedData.h"

@interface OrgBouncycastleAsn1CmsTimeStampedData () {
 @public
  OrgBouncycastleAsn1ASN1Integer *version__;
  OrgBouncycastleAsn1DERIA5String *dataUri_;
  OrgBouncycastleAsn1CmsMetaData *metaData_;
  OrgBouncycastleAsn1ASN1OctetString *content_;
  OrgBouncycastleAsn1CmsEvidence *temporalEvidence_;
}
- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq;
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CmsTimeStampedData, version__, OrgBouncycastleAsn1ASN1Integer *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CmsTimeStampedData, dataUri_, OrgBouncycastleAsn1DERIA5String *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CmsTimeStampedData, metaData_, OrgBouncycastleAsn1CmsMetaData *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CmsTimeStampedData, content_, OrgBouncycastleAsn1ASN1OctetString *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CmsTimeStampedData, temporalEvidence_, OrgBouncycastleAsn1CmsEvidence *)

@implementation OrgBouncycastleAsn1CmsTimeStampedData

- (instancetype)initWithOrgBouncycastleAsn1DERIA5String:(OrgBouncycastleAsn1DERIA5String *)dataUri
                     withOrgBouncycastleAsn1CmsMetaData:(OrgBouncycastleAsn1CmsMetaData *)metaData
                 withOrgBouncycastleAsn1ASN1OctetString:(OrgBouncycastleAsn1ASN1OctetString *)content
                     withOrgBouncycastleAsn1CmsEvidence:(OrgBouncycastleAsn1CmsEvidence *)temporalEvidence {
  if (self = [super init]) {
    self->version__ = [[OrgBouncycastleAsn1ASN1Integer alloc] initWithLong:1];
    self->dataUri_ = dataUri;
    self->metaData_ = metaData;
    self->content_ = content;
    self->temporalEvidence_ = temporalEvidence;
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq {
  if (self = [super init]) {
    self->version__ = OrgBouncycastleAsn1ASN1Integer_getInstanceWithId_([((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(seq)) getObjectAtWithInt:0]);
    jint index = 1;
    if ([[seq getObjectAtWithInt:index] isKindOfClass:[OrgBouncycastleAsn1DERIA5String class]]) {
      self->dataUri_ = OrgBouncycastleAsn1DERIA5String_getInstanceWithId_([seq getObjectAtWithInt:index++]);
    }
    if ([[seq getObjectAtWithInt:index] isKindOfClass:[OrgBouncycastleAsn1CmsMetaData class]] || [[seq getObjectAtWithInt:index] isKindOfClass:[OrgBouncycastleAsn1ASN1Sequence class]]) {
      self->metaData_ = OrgBouncycastleAsn1CmsMetaData_getInstanceWithId_([seq getObjectAtWithInt:index++]);
    }
    if ([[seq getObjectAtWithInt:index] isKindOfClass:[OrgBouncycastleAsn1ASN1OctetString class]]) {
      self->content_ = OrgBouncycastleAsn1ASN1OctetString_getInstanceWithId_([seq getObjectAtWithInt:index++]);
    }
    self->temporalEvidence_ = OrgBouncycastleAsn1CmsEvidence_getInstanceWithId_([seq getObjectAtWithInt:index]);
  }
  return self;
}

+ (OrgBouncycastleAsn1CmsTimeStampedData *)getInstanceWithId:(id)obj {
  return OrgBouncycastleAsn1CmsTimeStampedData_getInstanceWithId_(obj);
}

- (OrgBouncycastleAsn1DERIA5String *)getDataUri {
  return dataUri_;
}

- (OrgBouncycastleAsn1CmsMetaData *)getMetaData {
  return metaData_;
}

- (OrgBouncycastleAsn1ASN1OctetString *)getContent {
  return content_;
}

- (OrgBouncycastleAsn1CmsEvidence *)getTemporalEvidence {
  return temporalEvidence_;
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  OrgBouncycastleAsn1ASN1EncodableVector *v = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:version__];
  if (dataUri_ != nil) {
    [v addWithOrgBouncycastleAsn1ASN1Encodable:dataUri_];
  }
  if (metaData_ != nil) {
    [v addWithOrgBouncycastleAsn1ASN1Encodable:metaData_];
  }
  if (content_ != nil) {
    [v addWithOrgBouncycastleAsn1ASN1Encodable:content_];
  }
  [v addWithOrgBouncycastleAsn1ASN1Encodable:temporalEvidence_];
  return [[OrgBouncycastleAsn1BERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:v];
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1CmsTimeStampedData *)other {
  [super copyAllFieldsTo:other];
  other->version__ = version__;
  other->dataUri_ = dataUri_;
  other->metaData_ = metaData_;
  other->content_ = content_;
  other->temporalEvidence_ = temporalEvidence_;
}

@end

OrgBouncycastleAsn1CmsTimeStampedData *OrgBouncycastleAsn1CmsTimeStampedData_getInstanceWithId_(id obj) {
  OrgBouncycastleAsn1CmsTimeStampedData_init();
  if (obj == nil || [obj isKindOfClass:[OrgBouncycastleAsn1CmsTimeStampedData class]]) {
    return (OrgBouncycastleAsn1CmsTimeStampedData *) check_class_cast(obj, [OrgBouncycastleAsn1CmsTimeStampedData class]);
  }
  return [[OrgBouncycastleAsn1CmsTimeStampedData alloc] initWithOrgBouncycastleAsn1ASN1Sequence:OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_(obj)];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1CmsTimeStampedData)