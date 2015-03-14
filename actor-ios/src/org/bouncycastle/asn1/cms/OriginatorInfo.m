//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/cms/OriginatorInfo.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/bouncycastle/asn1/ASN1Encodable.h"
#include "org/bouncycastle/asn1/ASN1EncodableVector.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1Sequence.h"
#include "org/bouncycastle/asn1/ASN1Set.h"
#include "org/bouncycastle/asn1/ASN1TaggedObject.h"
#include "org/bouncycastle/asn1/DERSequence.h"
#include "org/bouncycastle/asn1/DERTaggedObject.h"
#include "org/bouncycastle/asn1/cms/OriginatorInfo.h"

@interface OrgBouncycastleAsn1CmsOriginatorInfo () {
 @public
  OrgBouncycastleAsn1ASN1Set *certs_;
  OrgBouncycastleAsn1ASN1Set *crls_;
}
- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq;
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CmsOriginatorInfo, certs_, OrgBouncycastleAsn1ASN1Set *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CmsOriginatorInfo, crls_, OrgBouncycastleAsn1ASN1Set *)

@implementation OrgBouncycastleAsn1CmsOriginatorInfo

- (instancetype)initWithOrgBouncycastleAsn1ASN1Set:(OrgBouncycastleAsn1ASN1Set *)certs
                    withOrgBouncycastleAsn1ASN1Set:(OrgBouncycastleAsn1ASN1Set *)crls {
  if (self = [super init]) {
    self->certs_ = certs;
    self->crls_ = crls;
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq {
  if (self = [super init]) {
    {
      OrgBouncycastleAsn1ASN1TaggedObject *o;
      switch ([((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(seq)) size]) {
        case 0:
        break;
        case 1:
        o = (OrgBouncycastleAsn1ASN1TaggedObject *) check_class_cast([seq getObjectAtWithInt:0], [OrgBouncycastleAsn1ASN1TaggedObject class]);
        switch ([((OrgBouncycastleAsn1ASN1TaggedObject *) nil_chk(o)) getTagNo]) {
          case 0:
          certs_ = OrgBouncycastleAsn1ASN1Set_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(o, NO);
          break;
          case 1:
          crls_ = OrgBouncycastleAsn1ASN1Set_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(o, NO);
          break;
          default:
          @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:JreStrcat("$I", @"Bad tag in OriginatorInfo: ", [o getTagNo])];
        }
        break;
        case 2:
        certs_ = OrgBouncycastleAsn1ASN1Set_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_((OrgBouncycastleAsn1ASN1TaggedObject *) check_class_cast([seq getObjectAtWithInt:0], [OrgBouncycastleAsn1ASN1TaggedObject class]), NO);
        crls_ = OrgBouncycastleAsn1ASN1Set_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_((OrgBouncycastleAsn1ASN1TaggedObject *) check_class_cast([seq getObjectAtWithInt:1], [OrgBouncycastleAsn1ASN1TaggedObject class]), NO);
        break;
        default:
        @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"OriginatorInfo too big"];
      }
    }
  }
  return self;
}

+ (OrgBouncycastleAsn1CmsOriginatorInfo *)getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject:(OrgBouncycastleAsn1ASN1TaggedObject *)obj
                                                                                 withBoolean:(jboolean)explicit_ {
  return OrgBouncycastleAsn1CmsOriginatorInfo_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(obj, explicit_);
}

+ (OrgBouncycastleAsn1CmsOriginatorInfo *)getInstanceWithId:(id)obj {
  return OrgBouncycastleAsn1CmsOriginatorInfo_getInstanceWithId_(obj);
}

- (OrgBouncycastleAsn1ASN1Set *)getCertificates {
  return certs_;
}

- (OrgBouncycastleAsn1ASN1Set *)getCRLs {
  return crls_;
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  OrgBouncycastleAsn1ASN1EncodableVector *v = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
  if (certs_ != nil) {
    [v addWithOrgBouncycastleAsn1ASN1Encodable:[[OrgBouncycastleAsn1DERTaggedObject alloc] initWithBoolean:NO withInt:0 withOrgBouncycastleAsn1ASN1Encodable:certs_]];
  }
  if (crls_ != nil) {
    [v addWithOrgBouncycastleAsn1ASN1Encodable:[[OrgBouncycastleAsn1DERTaggedObject alloc] initWithBoolean:NO withInt:1 withOrgBouncycastleAsn1ASN1Encodable:crls_]];
  }
  return [[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:v];
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1CmsOriginatorInfo *)other {
  [super copyAllFieldsTo:other];
  other->certs_ = certs_;
  other->crls_ = crls_;
}

@end

OrgBouncycastleAsn1CmsOriginatorInfo *OrgBouncycastleAsn1CmsOriginatorInfo_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(OrgBouncycastleAsn1ASN1TaggedObject *obj, jboolean explicit_) {
  OrgBouncycastleAsn1CmsOriginatorInfo_init();
  return OrgBouncycastleAsn1CmsOriginatorInfo_getInstanceWithId_(OrgBouncycastleAsn1ASN1Sequence_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(obj, explicit_));
}

OrgBouncycastleAsn1CmsOriginatorInfo *OrgBouncycastleAsn1CmsOriginatorInfo_getInstanceWithId_(id obj) {
  OrgBouncycastleAsn1CmsOriginatorInfo_init();
  if ([obj isKindOfClass:[OrgBouncycastleAsn1CmsOriginatorInfo class]]) {
    return (OrgBouncycastleAsn1CmsOriginatorInfo *) check_class_cast(obj, [OrgBouncycastleAsn1CmsOriginatorInfo class]);
  }
  else if (obj != nil) {
    return [[OrgBouncycastleAsn1CmsOriginatorInfo alloc] initWithOrgBouncycastleAsn1ASN1Sequence:OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_(obj)];
  }
  return nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1CmsOriginatorInfo)