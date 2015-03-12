//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/bouncycastle/asn1/ASN1Encodable.h"
#include "org/bouncycastle/asn1/ASN1EncodableVector.h"
#include "org/bouncycastle/asn1/ASN1OctetString.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1Sequence.h"
#include "org/bouncycastle/asn1/ASN1TaggedObject.h"
#include "org/bouncycastle/asn1/DERSequence.h"
#include "org/bouncycastle/asn1/DERTaggedObject.h"
#include "org/bouncycastle/asn1/cms/OriginatorPublicKey.h"
#include "org/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial.h"

@interface OrgBouncycastleAsn1CmsEccMQVuserKeyingMaterial () {
 @public
  OrgBouncycastleAsn1CmsOriginatorPublicKey *ephemeralPublicKey_;
  OrgBouncycastleAsn1ASN1OctetString *addedukm_;
}
- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq;
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CmsEccMQVuserKeyingMaterial, ephemeralPublicKey_, OrgBouncycastleAsn1CmsOriginatorPublicKey *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CmsEccMQVuserKeyingMaterial, addedukm_, OrgBouncycastleAsn1ASN1OctetString *)

@implementation OrgBouncycastleAsn1CmsEccMQVuserKeyingMaterial

- (instancetype)initWithOrgBouncycastleAsn1CmsOriginatorPublicKey:(OrgBouncycastleAsn1CmsOriginatorPublicKey *)ephemeralPublicKey
                           withOrgBouncycastleAsn1ASN1OctetString:(OrgBouncycastleAsn1ASN1OctetString *)addedukm {
  if (self = [super init]) {
    self->ephemeralPublicKey_ = ephemeralPublicKey;
    self->addedukm_ = addedukm;
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq {
  if (self = [super init]) {
    self->ephemeralPublicKey_ = OrgBouncycastleAsn1CmsOriginatorPublicKey_getInstanceWithId_([((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(seq)) getObjectAtWithInt:0]);
    if ([seq size] > 1) {
      self->addedukm_ = OrgBouncycastleAsn1ASN1OctetString_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_((OrgBouncycastleAsn1ASN1TaggedObject *) check_class_cast([seq getObjectAtWithInt:1], [OrgBouncycastleAsn1ASN1TaggedObject class]), YES);
    }
  }
  return self;
}

+ (OrgBouncycastleAsn1CmsEccMQVuserKeyingMaterial *)getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject:(OrgBouncycastleAsn1ASN1TaggedObject *)obj
                                                                                           withBoolean:(jboolean)explicit_ {
  return OrgBouncycastleAsn1CmsEccMQVuserKeyingMaterial_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(obj, explicit_);
}

+ (OrgBouncycastleAsn1CmsEccMQVuserKeyingMaterial *)getInstanceWithId:(id)obj {
  return OrgBouncycastleAsn1CmsEccMQVuserKeyingMaterial_getInstanceWithId_(obj);
}

- (OrgBouncycastleAsn1CmsOriginatorPublicKey *)getEphemeralPublicKey {
  return ephemeralPublicKey_;
}

- (OrgBouncycastleAsn1ASN1OctetString *)getAddedukm {
  return addedukm_;
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  OrgBouncycastleAsn1ASN1EncodableVector *v = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:ephemeralPublicKey_];
  if (addedukm_ != nil) {
    [v addWithOrgBouncycastleAsn1ASN1Encodable:[[OrgBouncycastleAsn1DERTaggedObject alloc] initWithBoolean:YES withInt:0 withOrgBouncycastleAsn1ASN1Encodable:addedukm_]];
  }
  return [[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:v];
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1CmsEccMQVuserKeyingMaterial *)other {
  [super copyAllFieldsTo:other];
  other->ephemeralPublicKey_ = ephemeralPublicKey_;
  other->addedukm_ = addedukm_;
}

@end

OrgBouncycastleAsn1CmsEccMQVuserKeyingMaterial *OrgBouncycastleAsn1CmsEccMQVuserKeyingMaterial_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(OrgBouncycastleAsn1ASN1TaggedObject *obj, jboolean explicit_) {
  OrgBouncycastleAsn1CmsEccMQVuserKeyingMaterial_init();
  return OrgBouncycastleAsn1CmsEccMQVuserKeyingMaterial_getInstanceWithId_(OrgBouncycastleAsn1ASN1Sequence_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(obj, explicit_));
}

OrgBouncycastleAsn1CmsEccMQVuserKeyingMaterial *OrgBouncycastleAsn1CmsEccMQVuserKeyingMaterial_getInstanceWithId_(id obj) {
  OrgBouncycastleAsn1CmsEccMQVuserKeyingMaterial_init();
  if (obj == nil || [obj isKindOfClass:[OrgBouncycastleAsn1CmsEccMQVuserKeyingMaterial class]]) {
    return (OrgBouncycastleAsn1CmsEccMQVuserKeyingMaterial *) check_class_cast(obj, [OrgBouncycastleAsn1CmsEccMQVuserKeyingMaterial class]);
  }
  if ([obj isKindOfClass:[OrgBouncycastleAsn1ASN1Sequence class]]) {
    return [[OrgBouncycastleAsn1CmsEccMQVuserKeyingMaterial alloc] initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *) check_class_cast(obj, [OrgBouncycastleAsn1ASN1Sequence class])];
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:JreStrcat("$$", @"Invalid MQVuserKeyingMaterial: ", [[nil_chk(obj) getClass] getName])];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1CmsEccMQVuserKeyingMaterial)
