//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/eac/PublicKeyDataObject.java
//

#include "J2ObjC_source.h"
#include "org/bouncycastle/asn1/ASN1Encodable.h"
#include "org/bouncycastle/asn1/ASN1ObjectIdentifier.h"
#include "org/bouncycastle/asn1/ASN1Sequence.h"
#include "org/bouncycastle/asn1/eac/EACObjectIdentifiers.h"
#include "org/bouncycastle/asn1/eac/ECDSAPublicKey.h"
#include "org/bouncycastle/asn1/eac/PublicKeyDataObject.h"
#include "org/bouncycastle/asn1/eac/RSAPublicKey.h"

#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation OrgBouncycastleAsn1EacPublicKeyDataObject

+ (OrgBouncycastleAsn1EacPublicKeyDataObject *)getInstanceWithId:(id)obj {
  return OrgBouncycastleAsn1EacPublicKeyDataObject_getInstanceWithId_(obj);
}

- (instancetype)init {
  return [super init];
}

@end

OrgBouncycastleAsn1EacPublicKeyDataObject *OrgBouncycastleAsn1EacPublicKeyDataObject_getInstanceWithId_(id obj) {
  OrgBouncycastleAsn1EacPublicKeyDataObject_init();
  if ([obj isKindOfClass:[OrgBouncycastleAsn1EacPublicKeyDataObject class]]) {
    return (OrgBouncycastleAsn1EacPublicKeyDataObject *) check_class_cast(obj, [OrgBouncycastleAsn1EacPublicKeyDataObject class]);
  }
  if (obj != nil) {
    OrgBouncycastleAsn1ASN1Sequence *seq = OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_(obj);
    OrgBouncycastleAsn1ASN1ObjectIdentifier *usage = OrgBouncycastleAsn1ASN1ObjectIdentifier_getInstanceWithId_([((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(seq)) getObjectAtWithInt:0]);
    if ([((OrgBouncycastleAsn1ASN1ObjectIdentifier *) nil_chk(usage)) onWithOrgBouncycastleAsn1ASN1ObjectIdentifier:OrgBouncycastleAsn1EacEACObjectIdentifiers_get_id_TA_ECDSA_()]) {
      return [[OrgBouncycastleAsn1EacECDSAPublicKey alloc] initWithOrgBouncycastleAsn1ASN1Sequence:seq];
    }
    else {
      return [[OrgBouncycastleAsn1EacRSAPublicKey alloc] initWithOrgBouncycastleAsn1ASN1Sequence:seq];
    }
  }
  return nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1EacPublicKeyDataObject)
