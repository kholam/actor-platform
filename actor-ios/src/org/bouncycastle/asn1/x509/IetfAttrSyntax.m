//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/x509/IetfAttrSyntax.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Enumeration.h"
#include "java/util/Vector.h"
#include "org/bouncycastle/asn1/ASN1Encodable.h"
#include "org/bouncycastle/asn1/ASN1EncodableVector.h"
#include "org/bouncycastle/asn1/ASN1ObjectIdentifier.h"
#include "org/bouncycastle/asn1/ASN1OctetString.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1Sequence.h"
#include "org/bouncycastle/asn1/ASN1TaggedObject.h"
#include "org/bouncycastle/asn1/DEROctetString.h"
#include "org/bouncycastle/asn1/DERSequence.h"
#include "org/bouncycastle/asn1/DERTaggedObject.h"
#include "org/bouncycastle/asn1/DERUTF8String.h"
#include "org/bouncycastle/asn1/x509/GeneralNames.h"
#include "org/bouncycastle/asn1/x509/IetfAttrSyntax.h"

@interface OrgBouncycastleAsn1X509IetfAttrSyntax ()
- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq;
@end

@implementation OrgBouncycastleAsn1X509IetfAttrSyntax

+ (OrgBouncycastleAsn1X509IetfAttrSyntax *)getInstanceWithId:(id)obj {
  return OrgBouncycastleAsn1X509IetfAttrSyntax_getInstanceWithId_(obj);
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq {
  if (self = [super init]) {
    policyAuthority_ = nil;
    values_ = [[JavaUtilVector alloc] init];
    valueChoice_ = -1;
    jint i = 0;
    if ([[((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(seq)) getObjectAtWithInt:0] isKindOfClass:[OrgBouncycastleAsn1ASN1TaggedObject class]]) {
      policyAuthority_ = OrgBouncycastleAsn1X509GeneralNames_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(((OrgBouncycastleAsn1ASN1TaggedObject *) check_class_cast([seq getObjectAtWithInt:0], [OrgBouncycastleAsn1ASN1TaggedObject class])), NO);
      i++;
    }
    else if ([seq size] == 2) {
      policyAuthority_ = OrgBouncycastleAsn1X509GeneralNames_getInstanceWithId_([seq getObjectAtWithInt:0]);
      i++;
    }
    if (!([[seq getObjectAtWithInt:i] isKindOfClass:[OrgBouncycastleAsn1ASN1Sequence class]])) {
      @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"Non-IetfAttrSyntax encoding"];
    }
    seq = (OrgBouncycastleAsn1ASN1Sequence *) check_class_cast([seq getObjectAtWithInt:i], [OrgBouncycastleAsn1ASN1Sequence class]);
    for (id<JavaUtilEnumeration> e = [((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(seq)) getObjects]; [((id<JavaUtilEnumeration>) nil_chk(e)) hasMoreElements]; ) {
      OrgBouncycastleAsn1ASN1Primitive *obj = (OrgBouncycastleAsn1ASN1Primitive *) check_class_cast([e nextElement], [OrgBouncycastleAsn1ASN1Primitive class]);
      jint type;
      if ([obj isKindOfClass:[OrgBouncycastleAsn1ASN1ObjectIdentifier class]]) {
        type = OrgBouncycastleAsn1X509IetfAttrSyntax_VALUE_OID;
      }
      else if ([obj isKindOfClass:[OrgBouncycastleAsn1DERUTF8String class]]) {
        type = OrgBouncycastleAsn1X509IetfAttrSyntax_VALUE_UTF8;
      }
      else if ([obj isKindOfClass:[OrgBouncycastleAsn1DEROctetString class]]) {
        type = OrgBouncycastleAsn1X509IetfAttrSyntax_VALUE_OCTETS;
      }
      else {
        @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"Bad value type encoding IetfAttrSyntax"];
      }
      if (valueChoice_ < 0) {
        valueChoice_ = type;
      }
      if (type != valueChoice_) {
        @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"Mix of value types in IetfAttrSyntax"];
      }
      [values_ addElementWithId:obj];
    }
  }
  return self;
}

- (OrgBouncycastleAsn1X509GeneralNames *)getPolicyAuthority {
  return policyAuthority_;
}

- (jint)getValueType {
  return valueChoice_;
}

- (IOSObjectArray *)getValues {
  if ([self getValueType] == OrgBouncycastleAsn1X509IetfAttrSyntax_VALUE_OCTETS) {
    IOSObjectArray *tmp = [IOSObjectArray newArrayWithLength:[((JavaUtilVector *) nil_chk(values_)) size] type:OrgBouncycastleAsn1ASN1OctetString_class_()];
    for (jint i = 0; i != tmp->size_; i++) {
      IOSObjectArray_Set(tmp, i, (OrgBouncycastleAsn1ASN1OctetString *) check_class_cast([values_ elementAtWithInt:i], [OrgBouncycastleAsn1ASN1OctetString class]));
    }
    return tmp;
  }
  else if ([self getValueType] == OrgBouncycastleAsn1X509IetfAttrSyntax_VALUE_OID) {
    IOSObjectArray *tmp = [IOSObjectArray newArrayWithLength:[((JavaUtilVector *) nil_chk(values_)) size] type:OrgBouncycastleAsn1ASN1ObjectIdentifier_class_()];
    for (jint i = 0; i != tmp->size_; i++) {
      IOSObjectArray_Set(tmp, i, (OrgBouncycastleAsn1ASN1ObjectIdentifier *) check_class_cast([values_ elementAtWithInt:i], [OrgBouncycastleAsn1ASN1ObjectIdentifier class]));
    }
    return tmp;
  }
  else {
    IOSObjectArray *tmp = [IOSObjectArray newArrayWithLength:[((JavaUtilVector *) nil_chk(values_)) size] type:OrgBouncycastleAsn1DERUTF8String_class_()];
    for (jint i = 0; i != tmp->size_; i++) {
      IOSObjectArray_Set(tmp, i, (OrgBouncycastleAsn1DERUTF8String *) check_class_cast([values_ elementAtWithInt:i], [OrgBouncycastleAsn1DERUTF8String class]));
    }
    return tmp;
  }
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  OrgBouncycastleAsn1ASN1EncodableVector *v = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
  if (policyAuthority_ != nil) {
    [v addWithOrgBouncycastleAsn1ASN1Encodable:[[OrgBouncycastleAsn1DERTaggedObject alloc] initWithInt:0 withOrgBouncycastleAsn1ASN1Encodable:policyAuthority_]];
  }
  OrgBouncycastleAsn1ASN1EncodableVector *v2 = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
  for (id<JavaUtilEnumeration> i = [((JavaUtilVector *) nil_chk(values_)) elements]; [((id<JavaUtilEnumeration>) nil_chk(i)) hasMoreElements]; ) {
    [v2 addWithOrgBouncycastleAsn1ASN1Encodable:(id<OrgBouncycastleAsn1ASN1Encodable>) check_protocol_cast([i nextElement], @protocol(OrgBouncycastleAsn1ASN1Encodable))];
  }
  [v addWithOrgBouncycastleAsn1ASN1Encodable:[[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:v2]];
  return [[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:v];
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1X509IetfAttrSyntax *)other {
  [super copyAllFieldsTo:other];
  other->policyAuthority_ = policyAuthority_;
  other->values_ = values_;
  other->valueChoice_ = valueChoice_;
}

@end

OrgBouncycastleAsn1X509IetfAttrSyntax *OrgBouncycastleAsn1X509IetfAttrSyntax_getInstanceWithId_(id obj) {
  OrgBouncycastleAsn1X509IetfAttrSyntax_init();
  if ([obj isKindOfClass:[OrgBouncycastleAsn1X509IetfAttrSyntax class]]) {
    return (OrgBouncycastleAsn1X509IetfAttrSyntax *) check_class_cast(obj, [OrgBouncycastleAsn1X509IetfAttrSyntax class]);
  }
  if (obj != nil) {
    return [[OrgBouncycastleAsn1X509IetfAttrSyntax alloc] initWithOrgBouncycastleAsn1ASN1Sequence:OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_(obj)];
  }
  return nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1X509IetfAttrSyntax)
