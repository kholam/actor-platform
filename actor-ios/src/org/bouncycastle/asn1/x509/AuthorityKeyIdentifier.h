//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier.java
//

#ifndef _OrgBouncycastleAsn1X509AuthorityKeyIdentifier_H_
#define _OrgBouncycastleAsn1X509AuthorityKeyIdentifier_H_

@class IOSByteArray;
@class JavaMathBigInteger;
@class OrgBouncycastleAsn1ASN1Integer;
@class OrgBouncycastleAsn1ASN1OctetString;
@class OrgBouncycastleAsn1ASN1Primitive;
@class OrgBouncycastleAsn1ASN1Sequence;
@class OrgBouncycastleAsn1ASN1TaggedObject;
@class OrgBouncycastleAsn1X509Extensions;
@class OrgBouncycastleAsn1X509GeneralNames;
@class OrgBouncycastleAsn1X509SubjectPublicKeyInfo;

#include "J2ObjC_header.h"
#include "org/bouncycastle/asn1/ASN1Object.h"

@interface OrgBouncycastleAsn1X509AuthorityKeyIdentifier : OrgBouncycastleAsn1ASN1Object {
 @public
  OrgBouncycastleAsn1ASN1OctetString *keyidentifier_;
  OrgBouncycastleAsn1X509GeneralNames *certissuer_;
  OrgBouncycastleAsn1ASN1Integer *certserno_;
}

+ (OrgBouncycastleAsn1X509AuthorityKeyIdentifier *)getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject:(OrgBouncycastleAsn1ASN1TaggedObject *)obj
                                                                                          withBoolean:(jboolean)explicit_;

+ (OrgBouncycastleAsn1X509AuthorityKeyIdentifier *)getInstanceWithId:(id)obj;

+ (OrgBouncycastleAsn1X509AuthorityKeyIdentifier *)fromExtensionsWithOrgBouncycastleAsn1X509Extensions:(OrgBouncycastleAsn1X509Extensions *)extensions;

- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq;

- (instancetype)initWithOrgBouncycastleAsn1X509SubjectPublicKeyInfo:(OrgBouncycastleAsn1X509SubjectPublicKeyInfo *)spki;

- (instancetype)initWithOrgBouncycastleAsn1X509SubjectPublicKeyInfo:(OrgBouncycastleAsn1X509SubjectPublicKeyInfo *)spki
                            withOrgBouncycastleAsn1X509GeneralNames:(OrgBouncycastleAsn1X509GeneralNames *)name
                                             withJavaMathBigInteger:(JavaMathBigInteger *)serialNumber;

- (instancetype)initWithOrgBouncycastleAsn1X509GeneralNames:(OrgBouncycastleAsn1X509GeneralNames *)name
                                     withJavaMathBigInteger:(JavaMathBigInteger *)serialNumber;

- (instancetype)initWithByteArray:(IOSByteArray *)keyIdentifier;

- (instancetype)initWithByteArray:(IOSByteArray *)keyIdentifier
withOrgBouncycastleAsn1X509GeneralNames:(OrgBouncycastleAsn1X509GeneralNames *)name
           withJavaMathBigInteger:(JavaMathBigInteger *)serialNumber;

- (IOSByteArray *)getKeyIdentifier;

- (OrgBouncycastleAsn1X509GeneralNames *)getAuthorityCertIssuer;

- (JavaMathBigInteger *)getAuthorityCertSerialNumber;

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleAsn1X509AuthorityKeyIdentifier)

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1X509AuthorityKeyIdentifier, keyidentifier_, OrgBouncycastleAsn1ASN1OctetString *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1X509AuthorityKeyIdentifier, certissuer_, OrgBouncycastleAsn1X509GeneralNames *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1X509AuthorityKeyIdentifier, certserno_, OrgBouncycastleAsn1ASN1Integer *)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT OrgBouncycastleAsn1X509AuthorityKeyIdentifier *OrgBouncycastleAsn1X509AuthorityKeyIdentifier_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(OrgBouncycastleAsn1ASN1TaggedObject *obj, jboolean explicit_);

FOUNDATION_EXPORT OrgBouncycastleAsn1X509AuthorityKeyIdentifier *OrgBouncycastleAsn1X509AuthorityKeyIdentifier_getInstanceWithId_(id obj);

FOUNDATION_EXPORT OrgBouncycastleAsn1X509AuthorityKeyIdentifier *OrgBouncycastleAsn1X509AuthorityKeyIdentifier_fromExtensionsWithOrgBouncycastleAsn1X509Extensions_(OrgBouncycastleAsn1X509Extensions *extensions);
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1X509AuthorityKeyIdentifier)

#endif // _OrgBouncycastleAsn1X509AuthorityKeyIdentifier_H_
