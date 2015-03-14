//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/eac/CertificateHolderAuthorization.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/util/Hashtable.h"
#include "org/bouncycastle/asn1/ASN1EncodableVector.h"
#include "org/bouncycastle/asn1/ASN1InputStream.h"
#include "org/bouncycastle/asn1/ASN1ObjectIdentifier.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/DERApplicationSpecific.h"
#include "org/bouncycastle/asn1/eac/BidirectionalMap.h"
#include "org/bouncycastle/asn1/eac/CertificateHolderAuthorization.h"
#include "org/bouncycastle/asn1/eac/EACObjectIdentifiers.h"
#include "org/bouncycastle/asn1/eac/EACTags.h"
#include "org/bouncycastle/util/Integers.h"

__attribute__((unused)) static void OrgBouncycastleAsn1EacCertificateHolderAuthorization_setPrivateDataWithOrgBouncycastleAsn1ASN1InputStream_(OrgBouncycastleAsn1EacCertificateHolderAuthorization *self, OrgBouncycastleAsn1ASN1InputStream *cha);
__attribute__((unused)) static void OrgBouncycastleAsn1EacCertificateHolderAuthorization_setAccessRightsWithByte_(OrgBouncycastleAsn1EacCertificateHolderAuthorization *self, jbyte rights);
__attribute__((unused)) static void OrgBouncycastleAsn1EacCertificateHolderAuthorization_setOidWithOrgBouncycastleAsn1ASN1ObjectIdentifier_(OrgBouncycastleAsn1EacCertificateHolderAuthorization *self, OrgBouncycastleAsn1ASN1ObjectIdentifier *oid);

@interface OrgBouncycastleAsn1EacCertificateHolderAuthorization ()

- (void)setPrivateDataWithOrgBouncycastleAsn1ASN1InputStream:(OrgBouncycastleAsn1ASN1InputStream *)cha;

- (void)setAccessRightsWithByte:(jbyte)rights;

- (void)setOidWithOrgBouncycastleAsn1ASN1ObjectIdentifier:(OrgBouncycastleAsn1ASN1ObjectIdentifier *)oid;
@end

BOOL OrgBouncycastleAsn1EacCertificateHolderAuthorization_initialized = NO;

@implementation OrgBouncycastleAsn1EacCertificateHolderAuthorization

OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1EacCertificateHolderAuthorization_id_role_EAC_;
JavaUtilHashtable * OrgBouncycastleAsn1EacCertificateHolderAuthorization_RightsDecodeMap_;
OrgBouncycastleAsn1EacBidirectionalMap * OrgBouncycastleAsn1EacCertificateHolderAuthorization_AuthorizationRole_;
JavaUtilHashtable * OrgBouncycastleAsn1EacCertificateHolderAuthorization_ReverseMap_;

+ (NSString *)GetRoleDescriptionWithInt:(jint)i {
  return OrgBouncycastleAsn1EacCertificateHolderAuthorization_GetRoleDescriptionWithInt_(i);
}

+ (jint)GetFlagWithNSString:(NSString *)description_ {
  return OrgBouncycastleAsn1EacCertificateHolderAuthorization_GetFlagWithNSString_(description_);
}

- (void)setPrivateDataWithOrgBouncycastleAsn1ASN1InputStream:(OrgBouncycastleAsn1ASN1InputStream *)cha {
  OrgBouncycastleAsn1EacCertificateHolderAuthorization_setPrivateDataWithOrgBouncycastleAsn1ASN1InputStream_(self, cha);
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1ObjectIdentifier:(OrgBouncycastleAsn1ASN1ObjectIdentifier *)oid
                                                        withInt:(jint)rights {
  if (self = [super init]) {
    OrgBouncycastleAsn1EacCertificateHolderAuthorization_setOidWithOrgBouncycastleAsn1ASN1ObjectIdentifier_(self, oid);
    OrgBouncycastleAsn1EacCertificateHolderAuthorization_setAccessRightsWithByte_(self, (jbyte) rights);
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleAsn1DERApplicationSpecific:(OrgBouncycastleAsn1DERApplicationSpecific *)aSpe {
  if (self = [super init]) {
    if ([((OrgBouncycastleAsn1DERApplicationSpecific *) nil_chk(aSpe)) getApplicationTag] == OrgBouncycastleAsn1EacEACTags_CERTIFICATE_HOLDER_AUTHORIZATION_TEMPLATE) {
      OrgBouncycastleAsn1EacCertificateHolderAuthorization_setPrivateDataWithOrgBouncycastleAsn1ASN1InputStream_(self, [[OrgBouncycastleAsn1ASN1InputStream alloc] initWithByteArray:[aSpe getContents]]);
    }
  }
  return self;
}

- (jint)getAccessRights {
  return IOSByteArray_Get(nil_chk([((OrgBouncycastleAsn1DERApplicationSpecific *) nil_chk(accessRights_)) getContents]), 0) & (jint) 0xff;
}

- (void)setAccessRightsWithByte:(jbyte)rights {
  OrgBouncycastleAsn1EacCertificateHolderAuthorization_setAccessRightsWithByte_(self, rights);
}

- (OrgBouncycastleAsn1ASN1ObjectIdentifier *)getOid {
  return oid_;
}

- (void)setOidWithOrgBouncycastleAsn1ASN1ObjectIdentifier:(OrgBouncycastleAsn1ASN1ObjectIdentifier *)oid {
  OrgBouncycastleAsn1EacCertificateHolderAuthorization_setOidWithOrgBouncycastleAsn1ASN1ObjectIdentifier_(self, oid);
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  OrgBouncycastleAsn1ASN1EncodableVector *v = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:oid_];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:accessRights_];
  return [[OrgBouncycastleAsn1DERApplicationSpecific alloc] initWithInt:OrgBouncycastleAsn1EacEACTags_CERTIFICATE_HOLDER_AUTHORIZATION_TEMPLATE withOrgBouncycastleAsn1ASN1EncodableVector:v];
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1EacCertificateHolderAuthorization *)other {
  [super copyAllFieldsTo:other];
  other->oid_ = oid_;
  other->accessRights_ = accessRights_;
}

+ (void)initialize {
  if (self == [OrgBouncycastleAsn1EacCertificateHolderAuthorization class]) {
    OrgBouncycastleAsn1EacCertificateHolderAuthorization_id_role_EAC_ = [((OrgBouncycastleAsn1ASN1ObjectIdentifier *) nil_chk(OrgBouncycastleAsn1EacEACObjectIdentifiers_get_bsi_de_())) branchWithNSString:@"3.1.2.1"];
    OrgBouncycastleAsn1EacCertificateHolderAuthorization_RightsDecodeMap_ = [[JavaUtilHashtable alloc] init];
    OrgBouncycastleAsn1EacCertificateHolderAuthorization_AuthorizationRole_ = [[OrgBouncycastleAsn1EacBidirectionalMap alloc] init];
    OrgBouncycastleAsn1EacCertificateHolderAuthorization_ReverseMap_ = [[JavaUtilHashtable alloc] init];
    {
      (void) [OrgBouncycastleAsn1EacCertificateHolderAuthorization_RightsDecodeMap_ putWithId:OrgBouncycastleUtilIntegers_valueOfWithInt_(OrgBouncycastleAsn1EacCertificateHolderAuthorization_RADG4) withId:@"RADG4"];
      (void) [OrgBouncycastleAsn1EacCertificateHolderAuthorization_RightsDecodeMap_ putWithId:OrgBouncycastleUtilIntegers_valueOfWithInt_(OrgBouncycastleAsn1EacCertificateHolderAuthorization_RADG3) withId:@"RADG3"];
      (void) [OrgBouncycastleAsn1EacCertificateHolderAuthorization_AuthorizationRole_ putWithId:OrgBouncycastleUtilIntegers_valueOfWithInt_(OrgBouncycastleAsn1EacCertificateHolderAuthorization_CVCA) withId:@"CVCA"];
      (void) [OrgBouncycastleAsn1EacCertificateHolderAuthorization_AuthorizationRole_ putWithId:OrgBouncycastleUtilIntegers_valueOfWithInt_(OrgBouncycastleAsn1EacCertificateHolderAuthorization_DV_DOMESTIC) withId:@"DV_DOMESTIC"];
      (void) [OrgBouncycastleAsn1EacCertificateHolderAuthorization_AuthorizationRole_ putWithId:OrgBouncycastleUtilIntegers_valueOfWithInt_(OrgBouncycastleAsn1EacCertificateHolderAuthorization_DV_FOREIGN) withId:@"DV_FOREIGN"];
      (void) [OrgBouncycastleAsn1EacCertificateHolderAuthorization_AuthorizationRole_ putWithId:OrgBouncycastleUtilIntegers_valueOfWithInt_(OrgBouncycastleAsn1EacCertificateHolderAuthorization_IS) withId:@"IS"];
    }
    J2OBJC_SET_INITIALIZED(OrgBouncycastleAsn1EacCertificateHolderAuthorization)
  }
}

@end

NSString *OrgBouncycastleAsn1EacCertificateHolderAuthorization_GetRoleDescriptionWithInt_(jint i) {
  OrgBouncycastleAsn1EacCertificateHolderAuthorization_init();
  return (NSString *) check_class_cast([((OrgBouncycastleAsn1EacBidirectionalMap *) nil_chk(OrgBouncycastleAsn1EacCertificateHolderAuthorization_AuthorizationRole_)) getWithId:OrgBouncycastleUtilIntegers_valueOfWithInt_(i)], [NSString class]);
}

jint OrgBouncycastleAsn1EacCertificateHolderAuthorization_GetFlagWithNSString_(NSString *description_) {
  OrgBouncycastleAsn1EacCertificateHolderAuthorization_init();
  JavaLangInteger *i = (JavaLangInteger *) check_class_cast([((OrgBouncycastleAsn1EacBidirectionalMap *) nil_chk(OrgBouncycastleAsn1EacCertificateHolderAuthorization_AuthorizationRole_)) getReverseWithId:description_], [JavaLangInteger class]);
  if (i == nil) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:JreStrcat("$$", @"Unknown value ", description_)];
  }
  return [((JavaLangInteger *) nil_chk(i)) intValue];
}

void OrgBouncycastleAsn1EacCertificateHolderAuthorization_setPrivateDataWithOrgBouncycastleAsn1ASN1InputStream_(OrgBouncycastleAsn1EacCertificateHolderAuthorization *self, OrgBouncycastleAsn1ASN1InputStream *cha) {
  OrgBouncycastleAsn1ASN1Primitive *obj;
  obj = [((OrgBouncycastleAsn1ASN1InputStream *) nil_chk(cha)) readObject];
  if ([obj isKindOfClass:[OrgBouncycastleAsn1ASN1ObjectIdentifier class]]) {
    self->oid_ = (OrgBouncycastleAsn1ASN1ObjectIdentifier *) check_class_cast(obj, [OrgBouncycastleAsn1ASN1ObjectIdentifier class]);
  }
  else {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"no Oid in CerticateHolderAuthorization"];
  }
  obj = [cha readObject];
  if ([obj isKindOfClass:[OrgBouncycastleAsn1DERApplicationSpecific class]]) {
    self->accessRights_ = (OrgBouncycastleAsn1DERApplicationSpecific *) check_class_cast(obj, [OrgBouncycastleAsn1DERApplicationSpecific class]);
  }
  else {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"No access rights in CerticateHolderAuthorization"];
  }
}

void OrgBouncycastleAsn1EacCertificateHolderAuthorization_setAccessRightsWithByte_(OrgBouncycastleAsn1EacCertificateHolderAuthorization *self, jbyte rights) {
  IOSByteArray *accessRights = [IOSByteArray newArrayWithLength:1];
  *IOSByteArray_GetRef(accessRights, 0) = rights;
  self->accessRights_ = [[OrgBouncycastleAsn1DERApplicationSpecific alloc] initWithInt:OrgBouncycastleAsn1EacEACTags_getTagWithInt_(OrgBouncycastleAsn1EacEACTags_DISCRETIONARY_DATA) withByteArray:accessRights];
}

void OrgBouncycastleAsn1EacCertificateHolderAuthorization_setOidWithOrgBouncycastleAsn1ASN1ObjectIdentifier_(OrgBouncycastleAsn1EacCertificateHolderAuthorization *self, OrgBouncycastleAsn1ASN1ObjectIdentifier *oid) {
  self->oid_ = oid;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1EacCertificateHolderAuthorization)