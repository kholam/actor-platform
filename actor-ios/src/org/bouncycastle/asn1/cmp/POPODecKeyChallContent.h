//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/cmp/POPODecKeyChallContent.java
//

#ifndef _OrgBouncycastleAsn1CmpPOPODecKeyChallContent_H_
#define _OrgBouncycastleAsn1CmpPOPODecKeyChallContent_H_

@class IOSObjectArray;
@class OrgBouncycastleAsn1ASN1Primitive;
@class OrgBouncycastleAsn1ASN1Sequence;

#include "J2ObjC_header.h"
#include "org/bouncycastle/asn1/ASN1Object.h"

@interface OrgBouncycastleAsn1CmpPOPODecKeyChallContent : OrgBouncycastleAsn1ASN1Object {
}

+ (OrgBouncycastleAsn1CmpPOPODecKeyChallContent *)getInstanceWithId:(id)o;

- (IOSObjectArray *)toChallengeArray;

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleAsn1CmpPOPODecKeyChallContent)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT OrgBouncycastleAsn1CmpPOPODecKeyChallContent *OrgBouncycastleAsn1CmpPOPODecKeyChallContent_getInstanceWithId_(id o);
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1CmpPOPODecKeyChallContent)

#endif // _OrgBouncycastleAsn1CmpPOPODecKeyChallContent_H_