//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/x9/KeySpecificInfo.java
//

#include "J2ObjC_source.h"
#include "java/util/Enumeration.h"
#include "org/bouncycastle/asn1/ASN1EncodableVector.h"
#include "org/bouncycastle/asn1/ASN1ObjectIdentifier.h"
#include "org/bouncycastle/asn1/ASN1OctetString.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1Sequence.h"
#include "org/bouncycastle/asn1/DERSequence.h"
#include "org/bouncycastle/asn1/x9/KeySpecificInfo.h"

@interface OrgBouncycastleAsn1X9KeySpecificInfo () {
 @public
  OrgBouncycastleAsn1ASN1ObjectIdentifier *algorithm_;
  OrgBouncycastleAsn1ASN1OctetString *counter_;
}
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1X9KeySpecificInfo, algorithm_, OrgBouncycastleAsn1ASN1ObjectIdentifier *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1X9KeySpecificInfo, counter_, OrgBouncycastleAsn1ASN1OctetString *)

@implementation OrgBouncycastleAsn1X9KeySpecificInfo

- (instancetype)initWithOrgBouncycastleAsn1ASN1ObjectIdentifier:(OrgBouncycastleAsn1ASN1ObjectIdentifier *)algorithm
                         withOrgBouncycastleAsn1ASN1OctetString:(OrgBouncycastleAsn1ASN1OctetString *)counter {
  if (self = [super init]) {
    self->algorithm_ = algorithm;
    self->counter_ = counter;
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq {
  if (self = [super init]) {
    id<JavaUtilEnumeration> e = [((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(seq)) getObjects];
    algorithm_ = (OrgBouncycastleAsn1ASN1ObjectIdentifier *) check_class_cast([((id<JavaUtilEnumeration>) nil_chk(e)) nextElement], [OrgBouncycastleAsn1ASN1ObjectIdentifier class]);
    counter_ = (OrgBouncycastleAsn1ASN1OctetString *) check_class_cast([e nextElement], [OrgBouncycastleAsn1ASN1OctetString class]);
  }
  return self;
}

- (OrgBouncycastleAsn1ASN1ObjectIdentifier *)getAlgorithm {
  return algorithm_;
}

- (OrgBouncycastleAsn1ASN1OctetString *)getCounter {
  return counter_;
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  OrgBouncycastleAsn1ASN1EncodableVector *v = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:algorithm_];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:counter_];
  return [[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:v];
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1X9KeySpecificInfo *)other {
  [super copyAllFieldsTo:other];
  other->algorithm_ = algorithm_;
  other->counter_ = counter_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1X9KeySpecificInfo)