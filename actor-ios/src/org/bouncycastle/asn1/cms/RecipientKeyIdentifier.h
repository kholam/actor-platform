//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/cms/RecipientKeyIdentifier.java
//

#ifndef _OrgBouncycastleAsn1CmsRecipientKeyIdentifier_H_
#define _OrgBouncycastleAsn1CmsRecipientKeyIdentifier_H_

@class IOSByteArray;
@class OrgBouncycastleAsn1ASN1GeneralizedTime;
@class OrgBouncycastleAsn1ASN1OctetString;
@class OrgBouncycastleAsn1ASN1Primitive;
@class OrgBouncycastleAsn1ASN1Sequence;
@class OrgBouncycastleAsn1ASN1TaggedObject;
@class OrgBouncycastleAsn1CmsOtherKeyAttribute;

#include "J2ObjC_header.h"
#include "org/bouncycastle/asn1/ASN1Object.h"

@interface OrgBouncycastleAsn1CmsRecipientKeyIdentifier : OrgBouncycastleAsn1ASN1Object {
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1OctetString:(OrgBouncycastleAsn1ASN1OctetString *)subjectKeyIdentifier
                withOrgBouncycastleAsn1ASN1GeneralizedTime:(OrgBouncycastleAsn1ASN1GeneralizedTime *)date
               withOrgBouncycastleAsn1CmsOtherKeyAttribute:(OrgBouncycastleAsn1CmsOtherKeyAttribute *)other;

- (instancetype)initWithByteArray:(IOSByteArray *)subjectKeyIdentifier
withOrgBouncycastleAsn1ASN1GeneralizedTime:(OrgBouncycastleAsn1ASN1GeneralizedTime *)date
withOrgBouncycastleAsn1CmsOtherKeyAttribute:(OrgBouncycastleAsn1CmsOtherKeyAttribute *)other;

- (instancetype)initWithByteArray:(IOSByteArray *)subjectKeyIdentifier;

- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq;

+ (OrgBouncycastleAsn1CmsRecipientKeyIdentifier *)getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject:(OrgBouncycastleAsn1ASN1TaggedObject *)ato
                                                                                         withBoolean:(jboolean)isExplicit;

+ (OrgBouncycastleAsn1CmsRecipientKeyIdentifier *)getInstanceWithId:(id)obj;

- (OrgBouncycastleAsn1ASN1OctetString *)getSubjectKeyIdentifier;

- (OrgBouncycastleAsn1ASN1GeneralizedTime *)getDate;

- (OrgBouncycastleAsn1CmsOtherKeyAttribute *)getOtherKeyAttribute;

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleAsn1CmsRecipientKeyIdentifier)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT OrgBouncycastleAsn1CmsRecipientKeyIdentifier *OrgBouncycastleAsn1CmsRecipientKeyIdentifier_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(OrgBouncycastleAsn1ASN1TaggedObject *ato, jboolean isExplicit);

FOUNDATION_EXPORT OrgBouncycastleAsn1CmsRecipientKeyIdentifier *OrgBouncycastleAsn1CmsRecipientKeyIdentifier_getInstanceWithId_(id obj);
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1CmsRecipientKeyIdentifier)

#endif // _OrgBouncycastleAsn1CmsRecipientKeyIdentifier_H_
