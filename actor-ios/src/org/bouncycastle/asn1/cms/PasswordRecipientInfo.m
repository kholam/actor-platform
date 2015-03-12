//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/cms/PasswordRecipientInfo.java
//

#include "J2ObjC_source.h"
#include "org/bouncycastle/asn1/ASN1Encodable.h"
#include "org/bouncycastle/asn1/ASN1EncodableVector.h"
#include "org/bouncycastle/asn1/ASN1Integer.h"
#include "org/bouncycastle/asn1/ASN1OctetString.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1Sequence.h"
#include "org/bouncycastle/asn1/ASN1TaggedObject.h"
#include "org/bouncycastle/asn1/DERSequence.h"
#include "org/bouncycastle/asn1/DERTaggedObject.h"
#include "org/bouncycastle/asn1/cms/PasswordRecipientInfo.h"
#include "org/bouncycastle/asn1/x509/AlgorithmIdentifier.h"

@interface OrgBouncycastleAsn1CmsPasswordRecipientInfo () {
 @public
  OrgBouncycastleAsn1ASN1Integer *version__;
  OrgBouncycastleAsn1X509AlgorithmIdentifier *keyDerivationAlgorithm_;
  OrgBouncycastleAsn1X509AlgorithmIdentifier *keyEncryptionAlgorithm_;
  OrgBouncycastleAsn1ASN1OctetString *encryptedKey_;
}
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CmsPasswordRecipientInfo, version__, OrgBouncycastleAsn1ASN1Integer *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CmsPasswordRecipientInfo, keyDerivationAlgorithm_, OrgBouncycastleAsn1X509AlgorithmIdentifier *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CmsPasswordRecipientInfo, keyEncryptionAlgorithm_, OrgBouncycastleAsn1X509AlgorithmIdentifier *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CmsPasswordRecipientInfo, encryptedKey_, OrgBouncycastleAsn1ASN1OctetString *)

@implementation OrgBouncycastleAsn1CmsPasswordRecipientInfo

- (instancetype)initWithOrgBouncycastleAsn1X509AlgorithmIdentifier:(OrgBouncycastleAsn1X509AlgorithmIdentifier *)keyEncryptionAlgorithm
                            withOrgBouncycastleAsn1ASN1OctetString:(OrgBouncycastleAsn1ASN1OctetString *)encryptedKey {
  if (self = [super init]) {
    self->version__ = [[OrgBouncycastleAsn1ASN1Integer alloc] initWithLong:0];
    self->keyEncryptionAlgorithm_ = keyEncryptionAlgorithm;
    self->encryptedKey_ = encryptedKey;
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleAsn1X509AlgorithmIdentifier:(OrgBouncycastleAsn1X509AlgorithmIdentifier *)keyDerivationAlgorithm
                    withOrgBouncycastleAsn1X509AlgorithmIdentifier:(OrgBouncycastleAsn1X509AlgorithmIdentifier *)keyEncryptionAlgorithm
                            withOrgBouncycastleAsn1ASN1OctetString:(OrgBouncycastleAsn1ASN1OctetString *)encryptedKey {
  if (self = [super init]) {
    self->version__ = [[OrgBouncycastleAsn1ASN1Integer alloc] initWithLong:0];
    self->keyDerivationAlgorithm_ = keyDerivationAlgorithm;
    self->keyEncryptionAlgorithm_ = keyEncryptionAlgorithm;
    self->encryptedKey_ = encryptedKey;
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq {
  if (self = [super init]) {
    version__ = (OrgBouncycastleAsn1ASN1Integer *) check_class_cast([((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(seq)) getObjectAtWithInt:0], [OrgBouncycastleAsn1ASN1Integer class]);
    if ([[seq getObjectAtWithInt:1] isKindOfClass:[OrgBouncycastleAsn1ASN1TaggedObject class]]) {
      keyDerivationAlgorithm_ = OrgBouncycastleAsn1X509AlgorithmIdentifier_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_((OrgBouncycastleAsn1ASN1TaggedObject *) check_class_cast([seq getObjectAtWithInt:1], [OrgBouncycastleAsn1ASN1TaggedObject class]), NO);
      keyEncryptionAlgorithm_ = OrgBouncycastleAsn1X509AlgorithmIdentifier_getInstanceWithId_([seq getObjectAtWithInt:2]);
      encryptedKey_ = (OrgBouncycastleAsn1ASN1OctetString *) check_class_cast([seq getObjectAtWithInt:3], [OrgBouncycastleAsn1ASN1OctetString class]);
    }
    else {
      keyEncryptionAlgorithm_ = OrgBouncycastleAsn1X509AlgorithmIdentifier_getInstanceWithId_([seq getObjectAtWithInt:1]);
      encryptedKey_ = (OrgBouncycastleAsn1ASN1OctetString *) check_class_cast([seq getObjectAtWithInt:2], [OrgBouncycastleAsn1ASN1OctetString class]);
    }
  }
  return self;
}

+ (OrgBouncycastleAsn1CmsPasswordRecipientInfo *)getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject:(OrgBouncycastleAsn1ASN1TaggedObject *)obj
                                                                                        withBoolean:(jboolean)explicit_ {
  return OrgBouncycastleAsn1CmsPasswordRecipientInfo_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(obj, explicit_);
}

+ (OrgBouncycastleAsn1CmsPasswordRecipientInfo *)getInstanceWithId:(id)obj {
  return OrgBouncycastleAsn1CmsPasswordRecipientInfo_getInstanceWithId_(obj);
}

- (OrgBouncycastleAsn1ASN1Integer *)getVersion {
  return version__;
}

- (OrgBouncycastleAsn1X509AlgorithmIdentifier *)getKeyDerivationAlgorithm {
  return keyDerivationAlgorithm_;
}

- (OrgBouncycastleAsn1X509AlgorithmIdentifier *)getKeyEncryptionAlgorithm {
  return keyEncryptionAlgorithm_;
}

- (OrgBouncycastleAsn1ASN1OctetString *)getEncryptedKey {
  return encryptedKey_;
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  OrgBouncycastleAsn1ASN1EncodableVector *v = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:version__];
  if (keyDerivationAlgorithm_ != nil) {
    [v addWithOrgBouncycastleAsn1ASN1Encodable:[[OrgBouncycastleAsn1DERTaggedObject alloc] initWithBoolean:NO withInt:0 withOrgBouncycastleAsn1ASN1Encodable:keyDerivationAlgorithm_]];
  }
  [v addWithOrgBouncycastleAsn1ASN1Encodable:keyEncryptionAlgorithm_];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:encryptedKey_];
  return [[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:v];
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1CmsPasswordRecipientInfo *)other {
  [super copyAllFieldsTo:other];
  other->version__ = version__;
  other->keyDerivationAlgorithm_ = keyDerivationAlgorithm_;
  other->keyEncryptionAlgorithm_ = keyEncryptionAlgorithm_;
  other->encryptedKey_ = encryptedKey_;
}

@end

OrgBouncycastleAsn1CmsPasswordRecipientInfo *OrgBouncycastleAsn1CmsPasswordRecipientInfo_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(OrgBouncycastleAsn1ASN1TaggedObject *obj, jboolean explicit_) {
  OrgBouncycastleAsn1CmsPasswordRecipientInfo_init();
  return OrgBouncycastleAsn1CmsPasswordRecipientInfo_getInstanceWithId_(OrgBouncycastleAsn1ASN1Sequence_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(obj, explicit_));
}

OrgBouncycastleAsn1CmsPasswordRecipientInfo *OrgBouncycastleAsn1CmsPasswordRecipientInfo_getInstanceWithId_(id obj) {
  OrgBouncycastleAsn1CmsPasswordRecipientInfo_init();
  if ([obj isKindOfClass:[OrgBouncycastleAsn1CmsPasswordRecipientInfo class]]) {
    return (OrgBouncycastleAsn1CmsPasswordRecipientInfo *) check_class_cast(obj, [OrgBouncycastleAsn1CmsPasswordRecipientInfo class]);
  }
  if (obj != nil) {
    return [[OrgBouncycastleAsn1CmsPasswordRecipientInfo alloc] initWithOrgBouncycastleAsn1ASN1Sequence:OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_(obj)];
  }
  return nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1CmsPasswordRecipientInfo)
