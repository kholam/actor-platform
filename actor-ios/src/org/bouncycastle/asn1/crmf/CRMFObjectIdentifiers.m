//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/crmf/CRMFObjectIdentifiers.java
//

#include "J2ObjC_source.h"
#include "org/bouncycastle/asn1/ASN1ObjectIdentifier.h"
#include "org/bouncycastle/asn1/crmf/CRMFObjectIdentifiers.h"
#include "org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers.h"

BOOL OrgBouncycastleAsn1CrmfCRMFObjectIdentifiers_initialized = NO;

OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1CrmfCRMFObjectIdentifiers_id_pkix_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1CrmfCRMFObjectIdentifiers_id_pkip_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1CrmfCRMFObjectIdentifiers_id_regCtrl_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1CrmfCRMFObjectIdentifiers_id_regCtrl_regToken_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1CrmfCRMFObjectIdentifiers_id_regCtrl_authenticator_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1CrmfCRMFObjectIdentifiers_id_regCtrl_pkiPublicationInfo_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1CrmfCRMFObjectIdentifiers_id_regCtrl_pkiArchiveOptions_;
OrgBouncycastleAsn1ASN1ObjectIdentifier * OrgBouncycastleAsn1CrmfCRMFObjectIdentifiers_id_ct_encKeyWithID_;

@implementation OrgBouncycastleAsn1CrmfCRMFObjectIdentifiers

+ (void)initialize {
  if (self == [OrgBouncycastleAsn1CrmfCRMFObjectIdentifiers class]) {
    OrgBouncycastleAsn1CrmfCRMFObjectIdentifiers_id_pkix_ = [[OrgBouncycastleAsn1ASN1ObjectIdentifier alloc] initWithNSString:@"1.3.6.1.5.5.7"];
    OrgBouncycastleAsn1CrmfCRMFObjectIdentifiers_id_pkip_ = [OrgBouncycastleAsn1CrmfCRMFObjectIdentifiers_id_pkix_ branchWithNSString:@"5"];
    OrgBouncycastleAsn1CrmfCRMFObjectIdentifiers_id_regCtrl_ = [((OrgBouncycastleAsn1ASN1ObjectIdentifier *) nil_chk(OrgBouncycastleAsn1CrmfCRMFObjectIdentifiers_id_pkip_)) branchWithNSString:@"1"];
    OrgBouncycastleAsn1CrmfCRMFObjectIdentifiers_id_regCtrl_regToken_ = [((OrgBouncycastleAsn1ASN1ObjectIdentifier *) nil_chk(OrgBouncycastleAsn1CrmfCRMFObjectIdentifiers_id_regCtrl_)) branchWithNSString:@"1"];
    OrgBouncycastleAsn1CrmfCRMFObjectIdentifiers_id_regCtrl_authenticator_ = [OrgBouncycastleAsn1CrmfCRMFObjectIdentifiers_id_regCtrl_ branchWithNSString:@"2"];
    OrgBouncycastleAsn1CrmfCRMFObjectIdentifiers_id_regCtrl_pkiPublicationInfo_ = [OrgBouncycastleAsn1CrmfCRMFObjectIdentifiers_id_regCtrl_ branchWithNSString:@"3"];
    OrgBouncycastleAsn1CrmfCRMFObjectIdentifiers_id_regCtrl_pkiArchiveOptions_ = [OrgBouncycastleAsn1CrmfCRMFObjectIdentifiers_id_regCtrl_ branchWithNSString:@"4"];
    OrgBouncycastleAsn1CrmfCRMFObjectIdentifiers_id_ct_encKeyWithID_ = [((OrgBouncycastleAsn1ASN1ObjectIdentifier *) nil_chk(OrgBouncycastleAsn1PkcsPKCSObjectIdentifiers_get_id_ct_())) branchWithNSString:@"21"];
    J2OBJC_SET_INITIALIZED(OrgBouncycastleAsn1CrmfCRMFObjectIdentifiers)
  }
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1CrmfCRMFObjectIdentifiers)
