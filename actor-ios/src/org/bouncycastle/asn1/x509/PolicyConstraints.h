//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/x509/PolicyConstraints.java
//

#ifndef _OrgBouncycastleAsn1X509PolicyConstraints_H_
#define _OrgBouncycastleAsn1X509PolicyConstraints_H_

@class JavaMathBigInteger;
@class OrgBouncycastleAsn1ASN1Primitive;
@class OrgBouncycastleAsn1ASN1Sequence;
@class OrgBouncycastleAsn1X509Extensions;

#include "J2ObjC_header.h"
#include "org/bouncycastle/asn1/ASN1Object.h"

@interface OrgBouncycastleAsn1X509PolicyConstraints : OrgBouncycastleAsn1ASN1Object {
}

- (instancetype)initWithJavaMathBigInteger:(JavaMathBigInteger *)requireExplicitPolicyMapping
                    withJavaMathBigInteger:(JavaMathBigInteger *)inhibitPolicyMapping;

+ (OrgBouncycastleAsn1X509PolicyConstraints *)getInstanceWithId:(id)obj;

+ (OrgBouncycastleAsn1X509PolicyConstraints *)fromExtensionsWithOrgBouncycastleAsn1X509Extensions:(OrgBouncycastleAsn1X509Extensions *)extensions;

- (JavaMathBigInteger *)getRequireExplicitPolicyMapping;

- (JavaMathBigInteger *)getInhibitPolicyMapping;

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleAsn1X509PolicyConstraints)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT OrgBouncycastleAsn1X509PolicyConstraints *OrgBouncycastleAsn1X509PolicyConstraints_getInstanceWithId_(id obj);

FOUNDATION_EXPORT OrgBouncycastleAsn1X509PolicyConstraints *OrgBouncycastleAsn1X509PolicyConstraints_fromExtensionsWithOrgBouncycastleAsn1X509Extensions_(OrgBouncycastleAsn1X509Extensions *extensions);
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1X509PolicyConstraints)

#endif // _OrgBouncycastleAsn1X509PolicyConstraints_H_
