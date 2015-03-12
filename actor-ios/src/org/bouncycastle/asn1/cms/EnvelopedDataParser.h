//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/cms/EnvelopedDataParser.java
//

#ifndef _OrgBouncycastleAsn1CmsEnvelopedDataParser_H_
#define _OrgBouncycastleAsn1CmsEnvelopedDataParser_H_

@class OrgBouncycastleAsn1ASN1Integer;
@class OrgBouncycastleAsn1CmsEncryptedContentInfoParser;
@class OrgBouncycastleAsn1CmsOriginatorInfo;
@protocol OrgBouncycastleAsn1ASN1Encodable;
@protocol OrgBouncycastleAsn1ASN1SequenceParser;
@protocol OrgBouncycastleAsn1ASN1SetParser;

#include "J2ObjC_header.h"

@interface OrgBouncycastleAsn1CmsEnvelopedDataParser : NSObject {
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1SequenceParser:(id<OrgBouncycastleAsn1ASN1SequenceParser>)seq;

- (OrgBouncycastleAsn1ASN1Integer *)getVersion;

- (OrgBouncycastleAsn1CmsOriginatorInfo *)getOriginatorInfo;

- (id<OrgBouncycastleAsn1ASN1SetParser>)getRecipientInfos;

- (OrgBouncycastleAsn1CmsEncryptedContentInfoParser *)getEncryptedContentInfo;

- (id<OrgBouncycastleAsn1ASN1SetParser>)getUnprotectedAttrs;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleAsn1CmsEnvelopedDataParser)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1CmsEnvelopedDataParser)

#endif // _OrgBouncycastleAsn1CmsEnvelopedDataParser_H_
