//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/BERSet.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/util/Enumeration.h"
#include "org/bouncycastle/asn1/ASN1Encodable.h"
#include "org/bouncycastle/asn1/ASN1EncodableVector.h"
#include "org/bouncycastle/asn1/ASN1OutputStream.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1Set.h"
#include "org/bouncycastle/asn1/BERSet.h"
#include "org/bouncycastle/asn1/BERTags.h"

@implementation OrgBouncycastleAsn1BERSet

- (instancetype)init {
  return [super init];
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1Encodable:(id<OrgBouncycastleAsn1ASN1Encodable>)obj {
  return [super initWithOrgBouncycastleAsn1ASN1Encodable:obj];
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1EncodableVector:(OrgBouncycastleAsn1ASN1EncodableVector *)v {
  return [super initWithOrgBouncycastleAsn1ASN1EncodableVector:v withBoolean:NO];
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1EncodableArray:(IOSObjectArray *)a {
  return [super initWithOrgBouncycastleAsn1ASN1EncodableArray:a withBoolean:NO];
}

- (jint)encodedLength {
  jint length = 0;
  for (id<JavaUtilEnumeration> e = [self getObjects]; [((id<JavaUtilEnumeration>) nil_chk(e)) hasMoreElements]; ) {
    length += [((OrgBouncycastleAsn1ASN1Primitive *) nil_chk([((id<OrgBouncycastleAsn1ASN1Encodable>) nil_chk(((id<OrgBouncycastleAsn1ASN1Encodable>) check_protocol_cast([e nextElement], @protocol(OrgBouncycastleAsn1ASN1Encodable))))) toASN1Primitive])) encodedLength];
  }
  return 2 + length + 2;
}

- (void)encodeWithOrgBouncycastleAsn1ASN1OutputStream:(OrgBouncycastleAsn1ASN1OutputStream *)outArg {
  [((OrgBouncycastleAsn1ASN1OutputStream *) nil_chk(outArg)) writeWithInt:OrgBouncycastleAsn1BERTags_SET | OrgBouncycastleAsn1BERTags_CONSTRUCTED];
  [outArg writeWithInt:(jint) 0x80];
  id<JavaUtilEnumeration> e = [self getObjects];
  while ([((id<JavaUtilEnumeration>) nil_chk(e)) hasMoreElements]) {
    [outArg writeObjectWithOrgBouncycastleAsn1ASN1Encodable:(id<OrgBouncycastleAsn1ASN1Encodable>) check_protocol_cast([e nextElement], @protocol(OrgBouncycastleAsn1ASN1Encodable))];
  }
  [outArg writeWithInt:(jint) 0x00];
  [outArg writeWithInt:(jint) 0x00];
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1BERSet)