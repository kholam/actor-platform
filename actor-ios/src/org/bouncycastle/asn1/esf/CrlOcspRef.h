//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/esf/CrlOcspRef.java
//

#ifndef _OrgBouncycastleAsn1EsfCrlOcspRef_H_
#define _OrgBouncycastleAsn1EsfCrlOcspRef_H_

@class OrgBouncycastleAsn1ASN1Primitive;
@class OrgBouncycastleAsn1ASN1Sequence;
@class OrgBouncycastleAsn1EsfCrlListID;
@class OrgBouncycastleAsn1EsfOcspListID;
@class OrgBouncycastleAsn1EsfOtherRevRefs;

#include "J2ObjC_header.h"
#include "org/bouncycastle/asn1/ASN1Object.h"

@interface OrgBouncycastleAsn1EsfCrlOcspRef : OrgBouncycastleAsn1ASN1Object {
}

+ (OrgBouncycastleAsn1EsfCrlOcspRef *)getInstanceWithId:(id)obj;

- (instancetype)initWithOrgBouncycastleAsn1EsfCrlListID:(OrgBouncycastleAsn1EsfCrlListID *)crlids
                   withOrgBouncycastleAsn1EsfOcspListID:(OrgBouncycastleAsn1EsfOcspListID *)ocspids
                 withOrgBouncycastleAsn1EsfOtherRevRefs:(OrgBouncycastleAsn1EsfOtherRevRefs *)otherRev;

- (OrgBouncycastleAsn1EsfCrlListID *)getCrlids;

- (OrgBouncycastleAsn1EsfOcspListID *)getOcspids;

- (OrgBouncycastleAsn1EsfOtherRevRefs *)getOtherRev;

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleAsn1EsfCrlOcspRef)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT OrgBouncycastleAsn1EsfCrlOcspRef *OrgBouncycastleAsn1EsfCrlOcspRef_getInstanceWithId_(id obj);
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1EsfCrlOcspRef)

#endif // _OrgBouncycastleAsn1EsfCrlOcspRef_H_
