//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/ess/ContentHints.java
//

#include "J2ObjC_source.h"
#include "org/bouncycastle/asn1/ASN1Encodable.h"
#include "org/bouncycastle/asn1/ASN1EncodableVector.h"
#include "org/bouncycastle/asn1/ASN1ObjectIdentifier.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1Sequence.h"
#include "org/bouncycastle/asn1/DERSequence.h"
#include "org/bouncycastle/asn1/DERUTF8String.h"
#include "org/bouncycastle/asn1/ess/ContentHints.h"

@interface OrgBouncycastleAsn1EssContentHints () {
 @public
  OrgBouncycastleAsn1DERUTF8String *contentDescription_;
  OrgBouncycastleAsn1ASN1ObjectIdentifier *contentType_;
}
- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq;
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1EssContentHints, contentDescription_, OrgBouncycastleAsn1DERUTF8String *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1EssContentHints, contentType_, OrgBouncycastleAsn1ASN1ObjectIdentifier *)

@implementation OrgBouncycastleAsn1EssContentHints

+ (OrgBouncycastleAsn1EssContentHints *)getInstanceWithId:(id)o {
  return OrgBouncycastleAsn1EssContentHints_getInstanceWithId_(o);
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq {
  if (self = [super init]) {
    id<OrgBouncycastleAsn1ASN1Encodable> field = [((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(seq)) getObjectAtWithInt:0];
    if ([[((id<OrgBouncycastleAsn1ASN1Encodable>) nil_chk(field)) toASN1Primitive] isKindOfClass:[OrgBouncycastleAsn1DERUTF8String class]]) {
      contentDescription_ = OrgBouncycastleAsn1DERUTF8String_getInstanceWithId_(field);
      contentType_ = OrgBouncycastleAsn1ASN1ObjectIdentifier_getInstanceWithId_([seq getObjectAtWithInt:1]);
    }
    else {
      contentType_ = OrgBouncycastleAsn1ASN1ObjectIdentifier_getInstanceWithId_([seq getObjectAtWithInt:0]);
    }
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1ObjectIdentifier:(OrgBouncycastleAsn1ASN1ObjectIdentifier *)contentType {
  if (self = [super init]) {
    self->contentType_ = contentType;
    self->contentDescription_ = nil;
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1ObjectIdentifier:(OrgBouncycastleAsn1ASN1ObjectIdentifier *)contentType
                           withOrgBouncycastleAsn1DERUTF8String:(OrgBouncycastleAsn1DERUTF8String *)contentDescription {
  if (self = [super init]) {
    self->contentType_ = contentType;
    self->contentDescription_ = contentDescription;
  }
  return self;
}

- (OrgBouncycastleAsn1ASN1ObjectIdentifier *)getContentType {
  return contentType_;
}

- (OrgBouncycastleAsn1DERUTF8String *)getContentDescription {
  return contentDescription_;
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  OrgBouncycastleAsn1ASN1EncodableVector *v = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
  if (contentDescription_ != nil) {
    [v addWithOrgBouncycastleAsn1ASN1Encodable:contentDescription_];
  }
  [v addWithOrgBouncycastleAsn1ASN1Encodable:contentType_];
  return [[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:v];
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1EssContentHints *)other {
  [super copyAllFieldsTo:other];
  other->contentDescription_ = contentDescription_;
  other->contentType_ = contentType_;
}

@end

OrgBouncycastleAsn1EssContentHints *OrgBouncycastleAsn1EssContentHints_getInstanceWithId_(id o) {
  OrgBouncycastleAsn1EssContentHints_init();
  if ([o isKindOfClass:[OrgBouncycastleAsn1EssContentHints class]]) {
    return (OrgBouncycastleAsn1EssContentHints *) check_class_cast(o, [OrgBouncycastleAsn1EssContentHints class]);
  }
  else if (o != nil) {
    return [[OrgBouncycastleAsn1EssContentHints alloc] initWithOrgBouncycastleAsn1ASN1Sequence:OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_(o)];
  }
  return nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1EssContentHints)