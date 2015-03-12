//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/esf/SignaturePolicyId.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/bouncycastle/asn1/ASN1Encodable.h"
#include "org/bouncycastle/asn1/ASN1EncodableVector.h"
#include "org/bouncycastle/asn1/ASN1ObjectIdentifier.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1Sequence.h"
#include "org/bouncycastle/asn1/DERSequence.h"
#include "org/bouncycastle/asn1/esf/OtherHashAlgAndValue.h"
#include "org/bouncycastle/asn1/esf/SigPolicyQualifiers.h"
#include "org/bouncycastle/asn1/esf/SignaturePolicyId.h"

@interface OrgBouncycastleAsn1EsfSignaturePolicyId () {
 @public
  OrgBouncycastleAsn1ASN1ObjectIdentifier *sigPolicyId_;
  OrgBouncycastleAsn1EsfOtherHashAlgAndValue *sigPolicyHash_;
  OrgBouncycastleAsn1EsfSigPolicyQualifiers *sigPolicyQualifiers_;
}
- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq;
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1EsfSignaturePolicyId, sigPolicyId_, OrgBouncycastleAsn1ASN1ObjectIdentifier *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1EsfSignaturePolicyId, sigPolicyHash_, OrgBouncycastleAsn1EsfOtherHashAlgAndValue *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1EsfSignaturePolicyId, sigPolicyQualifiers_, OrgBouncycastleAsn1EsfSigPolicyQualifiers *)

@implementation OrgBouncycastleAsn1EsfSignaturePolicyId

+ (OrgBouncycastleAsn1EsfSignaturePolicyId *)getInstanceWithId:(id)obj {
  return OrgBouncycastleAsn1EsfSignaturePolicyId_getInstanceWithId_(obj);
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq {
  if (self = [super init]) {
    if ([((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(seq)) size] != 2 && [seq size] != 3) {
      @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:JreStrcat("$I", @"Bad sequence size: ", [seq size])];
    }
    sigPolicyId_ = OrgBouncycastleAsn1ASN1ObjectIdentifier_getInstanceWithId_([seq getObjectAtWithInt:0]);
    sigPolicyHash_ = OrgBouncycastleAsn1EsfOtherHashAlgAndValue_getInstanceWithId_([seq getObjectAtWithInt:1]);
    if ([seq size] == 3) {
      sigPolicyQualifiers_ = OrgBouncycastleAsn1EsfSigPolicyQualifiers_getInstanceWithId_([seq getObjectAtWithInt:2]);
    }
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1ObjectIdentifier:(OrgBouncycastleAsn1ASN1ObjectIdentifier *)sigPolicyIdentifier
                 withOrgBouncycastleAsn1EsfOtherHashAlgAndValue:(OrgBouncycastleAsn1EsfOtherHashAlgAndValue *)sigPolicyHash {
  return [self initOrgBouncycastleAsn1EsfSignaturePolicyIdWithOrgBouncycastleAsn1ASN1ObjectIdentifier:sigPolicyIdentifier withOrgBouncycastleAsn1EsfOtherHashAlgAndValue:sigPolicyHash withOrgBouncycastleAsn1EsfSigPolicyQualifiers:nil];
}

- (instancetype)initOrgBouncycastleAsn1EsfSignaturePolicyIdWithOrgBouncycastleAsn1ASN1ObjectIdentifier:(OrgBouncycastleAsn1ASN1ObjectIdentifier *)sigPolicyId
                                                        withOrgBouncycastleAsn1EsfOtherHashAlgAndValue:(OrgBouncycastleAsn1EsfOtherHashAlgAndValue *)sigPolicyHash
                                                         withOrgBouncycastleAsn1EsfSigPolicyQualifiers:(OrgBouncycastleAsn1EsfSigPolicyQualifiers *)sigPolicyQualifiers {
  if (self = [super init]) {
    self->sigPolicyId_ = sigPolicyId;
    self->sigPolicyHash_ = sigPolicyHash;
    self->sigPolicyQualifiers_ = sigPolicyQualifiers;
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1ObjectIdentifier:(OrgBouncycastleAsn1ASN1ObjectIdentifier *)sigPolicyId
                 withOrgBouncycastleAsn1EsfOtherHashAlgAndValue:(OrgBouncycastleAsn1EsfOtherHashAlgAndValue *)sigPolicyHash
                  withOrgBouncycastleAsn1EsfSigPolicyQualifiers:(OrgBouncycastleAsn1EsfSigPolicyQualifiers *)sigPolicyQualifiers {
  return [self initOrgBouncycastleAsn1EsfSignaturePolicyIdWithOrgBouncycastleAsn1ASN1ObjectIdentifier:sigPolicyId withOrgBouncycastleAsn1EsfOtherHashAlgAndValue:sigPolicyHash withOrgBouncycastleAsn1EsfSigPolicyQualifiers:sigPolicyQualifiers];
}

- (OrgBouncycastleAsn1ASN1ObjectIdentifier *)getSigPolicyId {
  return [[OrgBouncycastleAsn1ASN1ObjectIdentifier alloc] initWithNSString:[((OrgBouncycastleAsn1ASN1ObjectIdentifier *) nil_chk(sigPolicyId_)) getId]];
}

- (OrgBouncycastleAsn1EsfOtherHashAlgAndValue *)getSigPolicyHash {
  return sigPolicyHash_;
}

- (OrgBouncycastleAsn1EsfSigPolicyQualifiers *)getSigPolicyQualifiers {
  return sigPolicyQualifiers_;
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  OrgBouncycastleAsn1ASN1EncodableVector *v = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:sigPolicyId_];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:sigPolicyHash_];
  if (sigPolicyQualifiers_ != nil) {
    [v addWithOrgBouncycastleAsn1ASN1Encodable:sigPolicyQualifiers_];
  }
  return [[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:v];
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1EsfSignaturePolicyId *)other {
  [super copyAllFieldsTo:other];
  other->sigPolicyId_ = sigPolicyId_;
  other->sigPolicyHash_ = sigPolicyHash_;
  other->sigPolicyQualifiers_ = sigPolicyQualifiers_;
}

@end

OrgBouncycastleAsn1EsfSignaturePolicyId *OrgBouncycastleAsn1EsfSignaturePolicyId_getInstanceWithId_(id obj) {
  OrgBouncycastleAsn1EsfSignaturePolicyId_init();
  if ([obj isKindOfClass:[OrgBouncycastleAsn1EsfSignaturePolicyId class]]) {
    return (OrgBouncycastleAsn1EsfSignaturePolicyId *) check_class_cast(obj, [OrgBouncycastleAsn1EsfSignaturePolicyId class]);
  }
  else if (obj != nil) {
    return [[OrgBouncycastleAsn1EsfSignaturePolicyId alloc] initWithOrgBouncycastleAsn1ASN1Sequence:OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_(obj)];
  }
  return nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1EsfSignaturePolicyId)
