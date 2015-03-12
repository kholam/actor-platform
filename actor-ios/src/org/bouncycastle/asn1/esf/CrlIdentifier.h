//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/esf/CrlIdentifier.java
//

#ifndef _OrgBouncycastleAsn1EsfCrlIdentifier_H_
#define _OrgBouncycastleAsn1EsfCrlIdentifier_H_

@class JavaMathBigInteger;
@class OrgBouncycastleAsn1ASN1Integer;
@class OrgBouncycastleAsn1ASN1Primitive;
@class OrgBouncycastleAsn1ASN1Sequence;
@class OrgBouncycastleAsn1ASN1UTCTime;
@class OrgBouncycastleAsn1X500X500Name;

#include "J2ObjC_header.h"
#include "org/bouncycastle/asn1/ASN1Object.h"

@interface OrgBouncycastleAsn1EsfCrlIdentifier : OrgBouncycastleAsn1ASN1Object {
}

+ (OrgBouncycastleAsn1EsfCrlIdentifier *)getInstanceWithId:(id)obj;

- (instancetype)initWithOrgBouncycastleAsn1X500X500Name:(OrgBouncycastleAsn1X500X500Name *)crlIssuer
                     withOrgBouncycastleAsn1ASN1UTCTime:(OrgBouncycastleAsn1ASN1UTCTime *)crlIssuedTime;

- (instancetype)initWithOrgBouncycastleAsn1X500X500Name:(OrgBouncycastleAsn1X500X500Name *)crlIssuer
                     withOrgBouncycastleAsn1ASN1UTCTime:(OrgBouncycastleAsn1ASN1UTCTime *)crlIssuedTime
                                 withJavaMathBigInteger:(JavaMathBigInteger *)crlNumber;

- (OrgBouncycastleAsn1X500X500Name *)getCrlIssuer;

- (OrgBouncycastleAsn1ASN1UTCTime *)getCrlIssuedTime;

- (JavaMathBigInteger *)getCrlNumber;

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleAsn1EsfCrlIdentifier)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT OrgBouncycastleAsn1EsfCrlIdentifier *OrgBouncycastleAsn1EsfCrlIdentifier_getInstanceWithId_(id obj);
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1EsfCrlIdentifier)

#endif // _OrgBouncycastleAsn1EsfCrlIdentifier_H_
