//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/misc/NetscapeCertType.java
//

#ifndef _OrgBouncycastleAsn1MiscNetscapeCertType_H_
#define _OrgBouncycastleAsn1MiscNetscapeCertType_H_

#include "J2ObjC_header.h"
#include "org/bouncycastle/asn1/DERBitString.h"

#define OrgBouncycastleAsn1MiscNetscapeCertType_objectSigning 16
#define OrgBouncycastleAsn1MiscNetscapeCertType_objectSigningCA 1
#define OrgBouncycastleAsn1MiscNetscapeCertType_reserved 8
#define OrgBouncycastleAsn1MiscNetscapeCertType_smime 32
#define OrgBouncycastleAsn1MiscNetscapeCertType_smimeCA 2
#define OrgBouncycastleAsn1MiscNetscapeCertType_sslCA 4
#define OrgBouncycastleAsn1MiscNetscapeCertType_sslClient 128
#define OrgBouncycastleAsn1MiscNetscapeCertType_sslServer 64

@interface OrgBouncycastleAsn1MiscNetscapeCertType : OrgBouncycastleAsn1DERBitString {
}

- (instancetype)initWithInt:(jint)usage;

- (instancetype)initWithOrgBouncycastleAsn1DERBitString:(OrgBouncycastleAsn1DERBitString *)usage;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleAsn1MiscNetscapeCertType)

CF_EXTERN_C_BEGIN

J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleAsn1MiscNetscapeCertType, sslClient, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleAsn1MiscNetscapeCertType, sslServer, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleAsn1MiscNetscapeCertType, smime, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleAsn1MiscNetscapeCertType, objectSigning, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleAsn1MiscNetscapeCertType, reserved, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleAsn1MiscNetscapeCertType, sslCA, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleAsn1MiscNetscapeCertType, smimeCA, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleAsn1MiscNetscapeCertType, objectSigningCA, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1MiscNetscapeCertType)

#endif // _OrgBouncycastleAsn1MiscNetscapeCertType_H_
