//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/cmp/GenMsgContent.java
//

#ifndef _OrgBouncycastleAsn1CmpGenMsgContent_H_
#define _OrgBouncycastleAsn1CmpGenMsgContent_H_

@class IOSObjectArray;
@class OrgBouncycastleAsn1ASN1Primitive;
@class OrgBouncycastleAsn1ASN1Sequence;
@class OrgBouncycastleAsn1CmpInfoTypeAndValue;

#include "J2ObjC_header.h"
#include "org/bouncycastle/asn1/ASN1Object.h"

@interface OrgBouncycastleAsn1CmpGenMsgContent : OrgBouncycastleAsn1ASN1Object {
}

+ (OrgBouncycastleAsn1CmpGenMsgContent *)getInstanceWithId:(id)o;

- (instancetype)initWithOrgBouncycastleAsn1CmpInfoTypeAndValue:(OrgBouncycastleAsn1CmpInfoTypeAndValue *)itv;

- (instancetype)initWithOrgBouncycastleAsn1CmpInfoTypeAndValueArray:(IOSObjectArray *)itv;

- (IOSObjectArray *)toInfoTypeAndValueArray;

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleAsn1CmpGenMsgContent)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT OrgBouncycastleAsn1CmpGenMsgContent *OrgBouncycastleAsn1CmpGenMsgContent_getInstanceWithId_(id o);
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1CmpGenMsgContent)

#endif // _OrgBouncycastleAsn1CmpGenMsgContent_H_
