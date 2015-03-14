//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/DERExternal.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/ByteArrayOutputStream.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/bouncycastle/asn1/ASN1Encodable.h"
#include "org/bouncycastle/asn1/ASN1EncodableVector.h"
#include "org/bouncycastle/asn1/ASN1Encoding.h"
#include "org/bouncycastle/asn1/ASN1Integer.h"
#include "org/bouncycastle/asn1/ASN1ObjectIdentifier.h"
#include "org/bouncycastle/asn1/ASN1OutputStream.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/BERTags.h"
#include "org/bouncycastle/asn1/DERExternal.h"
#include "org/bouncycastle/asn1/DERTaggedObject.h"

__attribute__((unused)) static OrgBouncycastleAsn1ASN1Primitive *OrgBouncycastleAsn1DERExternal_getObjFromVectorWithOrgBouncycastleAsn1ASN1EncodableVector_withInt_(OrgBouncycastleAsn1DERExternal *self, OrgBouncycastleAsn1ASN1EncodableVector *v, jint index);
__attribute__((unused)) static void OrgBouncycastleAsn1DERExternal_setDataValueDescriptorWithOrgBouncycastleAsn1ASN1Primitive_(OrgBouncycastleAsn1DERExternal *self, OrgBouncycastleAsn1ASN1Primitive *dataValueDescriptor);
__attribute__((unused)) static void OrgBouncycastleAsn1DERExternal_setDirectReferenceWithOrgBouncycastleAsn1ASN1ObjectIdentifier_(OrgBouncycastleAsn1DERExternal *self, OrgBouncycastleAsn1ASN1ObjectIdentifier *directReferemce);
__attribute__((unused)) static void OrgBouncycastleAsn1DERExternal_setEncodingWithInt_(OrgBouncycastleAsn1DERExternal *self, jint encoding);
__attribute__((unused)) static void OrgBouncycastleAsn1DERExternal_setExternalContentWithOrgBouncycastleAsn1ASN1Primitive_(OrgBouncycastleAsn1DERExternal *self, OrgBouncycastleAsn1ASN1Primitive *externalContent);
__attribute__((unused)) static void OrgBouncycastleAsn1DERExternal_setIndirectReferenceWithOrgBouncycastleAsn1ASN1Integer_(OrgBouncycastleAsn1DERExternal *self, OrgBouncycastleAsn1ASN1Integer *indirectReference);

@interface OrgBouncycastleAsn1DERExternal () {
 @public
  OrgBouncycastleAsn1ASN1ObjectIdentifier *directReference_;
  OrgBouncycastleAsn1ASN1Integer *indirectReference_;
  OrgBouncycastleAsn1ASN1Primitive *dataValueDescriptor_;
  jint encoding_;
  OrgBouncycastleAsn1ASN1Primitive *externalContent_;
}

- (OrgBouncycastleAsn1ASN1Primitive *)getObjFromVectorWithOrgBouncycastleAsn1ASN1EncodableVector:(OrgBouncycastleAsn1ASN1EncodableVector *)v
                                                                                         withInt:(jint)index;

- (void)setDataValueDescriptorWithOrgBouncycastleAsn1ASN1Primitive:(OrgBouncycastleAsn1ASN1Primitive *)dataValueDescriptor;

- (void)setDirectReferenceWithOrgBouncycastleAsn1ASN1ObjectIdentifier:(OrgBouncycastleAsn1ASN1ObjectIdentifier *)directReferemce;

- (void)setEncodingWithInt:(jint)encoding;

- (void)setExternalContentWithOrgBouncycastleAsn1ASN1Primitive:(OrgBouncycastleAsn1ASN1Primitive *)externalContent;

- (void)setIndirectReferenceWithOrgBouncycastleAsn1ASN1Integer:(OrgBouncycastleAsn1ASN1Integer *)indirectReference;
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1DERExternal, directReference_, OrgBouncycastleAsn1ASN1ObjectIdentifier *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1DERExternal, indirectReference_, OrgBouncycastleAsn1ASN1Integer *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1DERExternal, dataValueDescriptor_, OrgBouncycastleAsn1ASN1Primitive *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1DERExternal, externalContent_, OrgBouncycastleAsn1ASN1Primitive *)

@implementation OrgBouncycastleAsn1DERExternal

- (instancetype)initWithOrgBouncycastleAsn1ASN1EncodableVector:(OrgBouncycastleAsn1ASN1EncodableVector *)vector {
  if (self = [super init]) {
    jint offset = 0;
    OrgBouncycastleAsn1ASN1Primitive *enc = OrgBouncycastleAsn1DERExternal_getObjFromVectorWithOrgBouncycastleAsn1ASN1EncodableVector_withInt_(self, vector, offset);
    if ([enc isKindOfClass:[OrgBouncycastleAsn1ASN1ObjectIdentifier class]]) {
      directReference_ = (OrgBouncycastleAsn1ASN1ObjectIdentifier *) check_class_cast(enc, [OrgBouncycastleAsn1ASN1ObjectIdentifier class]);
      offset++;
      enc = OrgBouncycastleAsn1DERExternal_getObjFromVectorWithOrgBouncycastleAsn1ASN1EncodableVector_withInt_(self, vector, offset);
    }
    if ([enc isKindOfClass:[OrgBouncycastleAsn1ASN1Integer class]]) {
      indirectReference_ = (OrgBouncycastleAsn1ASN1Integer *) check_class_cast(enc, [OrgBouncycastleAsn1ASN1Integer class]);
      offset++;
      enc = OrgBouncycastleAsn1DERExternal_getObjFromVectorWithOrgBouncycastleAsn1ASN1EncodableVector_withInt_(self, vector, offset);
    }
    if (!([enc isKindOfClass:[OrgBouncycastleAsn1DERTaggedObject class]])) {
      dataValueDescriptor_ = (OrgBouncycastleAsn1ASN1Primitive *) check_class_cast(enc, [OrgBouncycastleAsn1ASN1Primitive class]);
      offset++;
      enc = OrgBouncycastleAsn1DERExternal_getObjFromVectorWithOrgBouncycastleAsn1ASN1EncodableVector_withInt_(self, vector, offset);
    }
    if ([((OrgBouncycastleAsn1ASN1EncodableVector *) nil_chk(vector)) size] != offset + 1) {
      @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"input vector too large"];
    }
    if (!([enc isKindOfClass:[OrgBouncycastleAsn1DERTaggedObject class]])) {
      @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"No tagged object found in vector. Structure doesn't seem to be of type External"];
    }
    OrgBouncycastleAsn1DERTaggedObject *obj = (OrgBouncycastleAsn1DERTaggedObject *) check_class_cast(enc, [OrgBouncycastleAsn1DERTaggedObject class]);
    OrgBouncycastleAsn1DERExternal_setEncodingWithInt_(self, [((OrgBouncycastleAsn1DERTaggedObject *) nil_chk(obj)) getTagNo]);
    externalContent_ = [obj getObject];
  }
  return self;
}

- (OrgBouncycastleAsn1ASN1Primitive *)getObjFromVectorWithOrgBouncycastleAsn1ASN1EncodableVector:(OrgBouncycastleAsn1ASN1EncodableVector *)v
                                                                                         withInt:(jint)index {
  return OrgBouncycastleAsn1DERExternal_getObjFromVectorWithOrgBouncycastleAsn1ASN1EncodableVector_withInt_(self, v, index);
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1ObjectIdentifier:(OrgBouncycastleAsn1ASN1ObjectIdentifier *)directReference
                             withOrgBouncycastleAsn1ASN1Integer:(OrgBouncycastleAsn1ASN1Integer *)indirectReference
                           withOrgBouncycastleAsn1ASN1Primitive:(OrgBouncycastleAsn1ASN1Primitive *)dataValueDescriptor
                         withOrgBouncycastleAsn1DERTaggedObject:(OrgBouncycastleAsn1DERTaggedObject *)externalData {
  return [self initOrgBouncycastleAsn1DERExternalWithOrgBouncycastleAsn1ASN1ObjectIdentifier:directReference withOrgBouncycastleAsn1ASN1Integer:indirectReference withOrgBouncycastleAsn1ASN1Primitive:dataValueDescriptor withInt:[((OrgBouncycastleAsn1DERTaggedObject *) nil_chk(externalData)) getTagNo] withOrgBouncycastleAsn1ASN1Primitive:[externalData toASN1Primitive]];
}

- (instancetype)initOrgBouncycastleAsn1DERExternalWithOrgBouncycastleAsn1ASN1ObjectIdentifier:(OrgBouncycastleAsn1ASN1ObjectIdentifier *)directReference
                                                           withOrgBouncycastleAsn1ASN1Integer:(OrgBouncycastleAsn1ASN1Integer *)indirectReference
                                                         withOrgBouncycastleAsn1ASN1Primitive:(OrgBouncycastleAsn1ASN1Primitive *)dataValueDescriptor
                                                                                      withInt:(jint)encoding
                                                         withOrgBouncycastleAsn1ASN1Primitive:(OrgBouncycastleAsn1ASN1Primitive *)externalData {
  if (self = [super init]) {
    OrgBouncycastleAsn1DERExternal_setDirectReferenceWithOrgBouncycastleAsn1ASN1ObjectIdentifier_(self, directReference);
    OrgBouncycastleAsn1DERExternal_setIndirectReferenceWithOrgBouncycastleAsn1ASN1Integer_(self, indirectReference);
    OrgBouncycastleAsn1DERExternal_setDataValueDescriptorWithOrgBouncycastleAsn1ASN1Primitive_(self, dataValueDescriptor);
    OrgBouncycastleAsn1DERExternal_setEncodingWithInt_(self, encoding);
    OrgBouncycastleAsn1DERExternal_setExternalContentWithOrgBouncycastleAsn1ASN1Primitive_(self, [((OrgBouncycastleAsn1ASN1Primitive *) nil_chk(externalData)) toASN1Primitive]);
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1ObjectIdentifier:(OrgBouncycastleAsn1ASN1ObjectIdentifier *)directReference
                             withOrgBouncycastleAsn1ASN1Integer:(OrgBouncycastleAsn1ASN1Integer *)indirectReference
                           withOrgBouncycastleAsn1ASN1Primitive:(OrgBouncycastleAsn1ASN1Primitive *)dataValueDescriptor
                                                        withInt:(jint)encoding
                           withOrgBouncycastleAsn1ASN1Primitive:(OrgBouncycastleAsn1ASN1Primitive *)externalData {
  return [self initOrgBouncycastleAsn1DERExternalWithOrgBouncycastleAsn1ASN1ObjectIdentifier:directReference withOrgBouncycastleAsn1ASN1Integer:indirectReference withOrgBouncycastleAsn1ASN1Primitive:dataValueDescriptor withInt:encoding withOrgBouncycastleAsn1ASN1Primitive:externalData];
}

- (NSUInteger)hash {
  jint ret = 0;
  if (directReference_ != nil) {
    ret = ((jint) [directReference_ hash]);
  }
  if (indirectReference_ != nil) {
    ret ^= ((jint) [indirectReference_ hash]);
  }
  if (dataValueDescriptor_ != nil) {
    ret ^= ((jint) [dataValueDescriptor_ hash]);
  }
  ret ^= ((jint) [((OrgBouncycastleAsn1ASN1Primitive *) nil_chk(externalContent_)) hash]);
  return ret;
}

- (jboolean)isConstructed {
  return YES;
}

- (jint)encodedLength {
  return ((IOSByteArray *) nil_chk([self getEncoded]))->size_;
}

- (void)encodeWithOrgBouncycastleAsn1ASN1OutputStream:(OrgBouncycastleAsn1ASN1OutputStream *)outArg {
  JavaIoByteArrayOutputStream *baos = [[JavaIoByteArrayOutputStream alloc] init];
  if (directReference_ != nil) {
    [baos writeWithByteArray:[directReference_ getEncodedWithNSString:OrgBouncycastleAsn1ASN1Encoding_get_DER_()]];
  }
  if (indirectReference_ != nil) {
    [baos writeWithByteArray:[indirectReference_ getEncodedWithNSString:OrgBouncycastleAsn1ASN1Encoding_get_DER_()]];
  }
  if (dataValueDescriptor_ != nil) {
    [baos writeWithByteArray:[dataValueDescriptor_ getEncodedWithNSString:OrgBouncycastleAsn1ASN1Encoding_get_DER_()]];
  }
  OrgBouncycastleAsn1DERTaggedObject *obj = [[OrgBouncycastleAsn1DERTaggedObject alloc] initWithBoolean:YES withInt:encoding_ withOrgBouncycastleAsn1ASN1Encodable:externalContent_];
  [baos writeWithByteArray:[obj getEncodedWithNSString:OrgBouncycastleAsn1ASN1Encoding_get_DER_()]];
  [((OrgBouncycastleAsn1ASN1OutputStream *) nil_chk(outArg)) writeEncodedWithInt:OrgBouncycastleAsn1BERTags_CONSTRUCTED withInt:OrgBouncycastleAsn1BERTags_EXTERNAL withByteArray:[baos toByteArray]];
}

- (jboolean)asn1EqualsWithOrgBouncycastleAsn1ASN1Primitive:(OrgBouncycastleAsn1ASN1Primitive *)o {
  if (!([o isKindOfClass:[OrgBouncycastleAsn1DERExternal class]])) {
    return NO;
  }
  if (self == o) {
    return YES;
  }
  OrgBouncycastleAsn1DERExternal *other = (OrgBouncycastleAsn1DERExternal *) check_class_cast(o, [OrgBouncycastleAsn1DERExternal class]);
  if (directReference_ != nil) {
    if (((OrgBouncycastleAsn1DERExternal *) nil_chk(other))->directReference_ == nil || ![other->directReference_ isEqual:directReference_]) {
      return NO;
    }
  }
  if (indirectReference_ != nil) {
    if (((OrgBouncycastleAsn1DERExternal *) nil_chk(other))->indirectReference_ == nil || ![other->indirectReference_ isEqual:indirectReference_]) {
      return NO;
    }
  }
  if (dataValueDescriptor_ != nil) {
    if (((OrgBouncycastleAsn1DERExternal *) nil_chk(other))->dataValueDescriptor_ == nil || ![other->dataValueDescriptor_ isEqual:dataValueDescriptor_]) {
      return NO;
    }
  }
  return [((OrgBouncycastleAsn1ASN1Primitive *) nil_chk(externalContent_)) isEqual:((OrgBouncycastleAsn1DERExternal *) nil_chk(other))->externalContent_];
}

- (OrgBouncycastleAsn1ASN1Primitive *)getDataValueDescriptor {
  return dataValueDescriptor_;
}

- (OrgBouncycastleAsn1ASN1ObjectIdentifier *)getDirectReference {
  return directReference_;
}

- (jint)getEncoding {
  return encoding_;
}

- (OrgBouncycastleAsn1ASN1Primitive *)getExternalContent {
  return externalContent_;
}

- (OrgBouncycastleAsn1ASN1Integer *)getIndirectReference {
  return indirectReference_;
}

- (void)setDataValueDescriptorWithOrgBouncycastleAsn1ASN1Primitive:(OrgBouncycastleAsn1ASN1Primitive *)dataValueDescriptor {
  OrgBouncycastleAsn1DERExternal_setDataValueDescriptorWithOrgBouncycastleAsn1ASN1Primitive_(self, dataValueDescriptor);
}

- (void)setDirectReferenceWithOrgBouncycastleAsn1ASN1ObjectIdentifier:(OrgBouncycastleAsn1ASN1ObjectIdentifier *)directReferemce {
  OrgBouncycastleAsn1DERExternal_setDirectReferenceWithOrgBouncycastleAsn1ASN1ObjectIdentifier_(self, directReferemce);
}

- (void)setEncodingWithInt:(jint)encoding {
  OrgBouncycastleAsn1DERExternal_setEncodingWithInt_(self, encoding);
}

- (void)setExternalContentWithOrgBouncycastleAsn1ASN1Primitive:(OrgBouncycastleAsn1ASN1Primitive *)externalContent {
  OrgBouncycastleAsn1DERExternal_setExternalContentWithOrgBouncycastleAsn1ASN1Primitive_(self, externalContent);
}

- (void)setIndirectReferenceWithOrgBouncycastleAsn1ASN1Integer:(OrgBouncycastleAsn1ASN1Integer *)indirectReference {
  OrgBouncycastleAsn1DERExternal_setIndirectReferenceWithOrgBouncycastleAsn1ASN1Integer_(self, indirectReference);
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1DERExternal *)other {
  [super copyAllFieldsTo:other];
  other->directReference_ = directReference_;
  other->indirectReference_ = indirectReference_;
  other->dataValueDescriptor_ = dataValueDescriptor_;
  other->encoding_ = encoding_;
  other->externalContent_ = externalContent_;
}

@end

OrgBouncycastleAsn1ASN1Primitive *OrgBouncycastleAsn1DERExternal_getObjFromVectorWithOrgBouncycastleAsn1ASN1EncodableVector_withInt_(OrgBouncycastleAsn1DERExternal *self, OrgBouncycastleAsn1ASN1EncodableVector *v, jint index) {
  if ([((OrgBouncycastleAsn1ASN1EncodableVector *) nil_chk(v)) size] <= index) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"too few objects in input vector"];
  }
  return [((id<OrgBouncycastleAsn1ASN1Encodable>) nil_chk([v getWithInt:index])) toASN1Primitive];
}

void OrgBouncycastleAsn1DERExternal_setDataValueDescriptorWithOrgBouncycastleAsn1ASN1Primitive_(OrgBouncycastleAsn1DERExternal *self, OrgBouncycastleAsn1ASN1Primitive *dataValueDescriptor) {
  self->dataValueDescriptor_ = dataValueDescriptor;
}

void OrgBouncycastleAsn1DERExternal_setDirectReferenceWithOrgBouncycastleAsn1ASN1ObjectIdentifier_(OrgBouncycastleAsn1DERExternal *self, OrgBouncycastleAsn1ASN1ObjectIdentifier *directReferemce) {
  self->directReference_ = directReferemce;
}

void OrgBouncycastleAsn1DERExternal_setEncodingWithInt_(OrgBouncycastleAsn1DERExternal *self, jint encoding) {
  if (encoding < 0 || encoding > 2) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:JreStrcat("$I", @"invalid encoding value: ", encoding)];
  }
  self->encoding_ = encoding;
}

void OrgBouncycastleAsn1DERExternal_setExternalContentWithOrgBouncycastleAsn1ASN1Primitive_(OrgBouncycastleAsn1DERExternal *self, OrgBouncycastleAsn1ASN1Primitive *externalContent) {
  self->externalContent_ = externalContent;
}

void OrgBouncycastleAsn1DERExternal_setIndirectReferenceWithOrgBouncycastleAsn1ASN1Integer_(OrgBouncycastleAsn1DERExternal *self, OrgBouncycastleAsn1ASN1Integer *indirectReference) {
  self->indirectReference_ = indirectReference;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1DERExternal)