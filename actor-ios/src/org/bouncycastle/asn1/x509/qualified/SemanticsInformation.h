//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/x509/qualified/SemanticsInformation.java
//

#ifndef _OrgBouncycastleAsn1X509QualifiedSemanticsInformation_H_
#define _OrgBouncycastleAsn1X509QualifiedSemanticsInformation_H_

@class IOSObjectArray;
@class OrgBouncycastleAsn1ASN1ObjectIdentifier;
@class OrgBouncycastleAsn1ASN1Primitive;
@class OrgBouncycastleAsn1ASN1Sequence;

#include "J2ObjC_header.h"
#include "org/bouncycastle/asn1/ASN1Object.h"

@interface OrgBouncycastleAsn1X509QualifiedSemanticsInformation : OrgBouncycastleAsn1ASN1Object {
}

+ (OrgBouncycastleAsn1X509QualifiedSemanticsInformation *)getInstanceWithId:(id)obj;

- (instancetype)initWithOrgBouncycastleAsn1ASN1ObjectIdentifier:(OrgBouncycastleAsn1ASN1ObjectIdentifier *)semanticsIdentifier
                    withOrgBouncycastleAsn1X509GeneralNameArray:(IOSObjectArray *)generalNames;

- (instancetype)initWithOrgBouncycastleAsn1ASN1ObjectIdentifier:(OrgBouncycastleAsn1ASN1ObjectIdentifier *)semanticsIdentifier;

- (instancetype)initWithOrgBouncycastleAsn1X509GeneralNameArray:(IOSObjectArray *)generalNames;

- (OrgBouncycastleAsn1ASN1ObjectIdentifier *)getSemanticsIdentifier;

- (IOSObjectArray *)getNameRegistrationAuthorities;

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleAsn1X509QualifiedSemanticsInformation)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT OrgBouncycastleAsn1X509QualifiedSemanticsInformation *OrgBouncycastleAsn1X509QualifiedSemanticsInformation_getInstanceWithId_(id obj);
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1X509QualifiedSemanticsInformation)

#endif // _OrgBouncycastleAsn1X509QualifiedSemanticsInformation_H_
