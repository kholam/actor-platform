//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/isismtt/x509/MonetaryLimit.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/math/BigInteger.h"
#include "java/util/Enumeration.h"
#include "org/bouncycastle/asn1/ASN1EncodableVector.h"
#include "org/bouncycastle/asn1/ASN1Integer.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1Sequence.h"
#include "org/bouncycastle/asn1/DERPrintableString.h"
#include "org/bouncycastle/asn1/DERSequence.h"
#include "org/bouncycastle/asn1/isismtt/x509/MonetaryLimit.h"

@interface OrgBouncycastleAsn1IsismttX509MonetaryLimit ()
- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq;
@end

@implementation OrgBouncycastleAsn1IsismttX509MonetaryLimit

+ (OrgBouncycastleAsn1IsismttX509MonetaryLimit *)getInstanceWithId:(id)obj {
  return OrgBouncycastleAsn1IsismttX509MonetaryLimit_getInstanceWithId_(obj);
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq {
  if (self = [super init]) {
    if ([((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(seq)) size] != 3) {
      @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:JreStrcat("$I", @"Bad sequence size: ", [seq size])];
    }
    id<JavaUtilEnumeration> e = [seq getObjects];
    currency_ = OrgBouncycastleAsn1DERPrintableString_getInstanceWithId_([((id<JavaUtilEnumeration>) nil_chk(e)) nextElement]);
    amount_ = OrgBouncycastleAsn1ASN1Integer_getInstanceWithId_([e nextElement]);
    exponent_ = OrgBouncycastleAsn1ASN1Integer_getInstanceWithId_([e nextElement]);
  }
  return self;
}

- (instancetype)initWithNSString:(NSString *)currency
                         withInt:(jint)amount
                         withInt:(jint)exponent {
  if (self = [super init]) {
    self->currency_ = [[OrgBouncycastleAsn1DERPrintableString alloc] initWithNSString:currency withBoolean:YES];
    self->amount_ = [[OrgBouncycastleAsn1ASN1Integer alloc] initWithLong:amount];
    self->exponent_ = [[OrgBouncycastleAsn1ASN1Integer alloc] initWithLong:exponent];
  }
  return self;
}

- (NSString *)getCurrency {
  return [((OrgBouncycastleAsn1DERPrintableString *) nil_chk(currency_)) getString];
}

- (JavaMathBigInteger *)getAmount {
  return [((OrgBouncycastleAsn1ASN1Integer *) nil_chk(amount_)) getValue];
}

- (JavaMathBigInteger *)getExponent {
  return [((OrgBouncycastleAsn1ASN1Integer *) nil_chk(exponent_)) getValue];
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  OrgBouncycastleAsn1ASN1EncodableVector *seq = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
  [seq addWithOrgBouncycastleAsn1ASN1Encodable:currency_];
  [seq addWithOrgBouncycastleAsn1ASN1Encodable:amount_];
  [seq addWithOrgBouncycastleAsn1ASN1Encodable:exponent_];
  return [[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:seq];
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1IsismttX509MonetaryLimit *)other {
  [super copyAllFieldsTo:other];
  other->currency_ = currency_;
  other->amount_ = amount_;
  other->exponent_ = exponent_;
}

@end

OrgBouncycastleAsn1IsismttX509MonetaryLimit *OrgBouncycastleAsn1IsismttX509MonetaryLimit_getInstanceWithId_(id obj) {
  OrgBouncycastleAsn1IsismttX509MonetaryLimit_init();
  if (obj == nil || [obj isKindOfClass:[OrgBouncycastleAsn1IsismttX509MonetaryLimit class]]) {
    return (OrgBouncycastleAsn1IsismttX509MonetaryLimit *) check_class_cast(obj, [OrgBouncycastleAsn1IsismttX509MonetaryLimit class]);
  }
  if ([obj isKindOfClass:[OrgBouncycastleAsn1ASN1Sequence class]]) {
    return [[OrgBouncycastleAsn1IsismttX509MonetaryLimit alloc] initWithOrgBouncycastleAsn1ASN1Sequence:OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_(obj)];
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"unknown object in getInstance"];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1IsismttX509MonetaryLimit)
