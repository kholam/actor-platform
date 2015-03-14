//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/ASN1Boolean.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/bouncycastle/asn1/ASN1Boolean.h"
#include "org/bouncycastle/asn1/ASN1OctetString.h"
#include "org/bouncycastle/asn1/ASN1OutputStream.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1TaggedObject.h"
#include "org/bouncycastle/asn1/BERTags.h"
#include "org/bouncycastle/util/Arrays.h"

@interface OrgBouncycastleAsn1ASN1Boolean () {
 @public
  IOSByteArray *value_;
}
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1ASN1Boolean, value_, IOSByteArray *)

BOOL OrgBouncycastleAsn1ASN1Boolean_initialized = NO;

@implementation OrgBouncycastleAsn1ASN1Boolean

IOSByteArray * OrgBouncycastleAsn1ASN1Boolean_TRUE_VALUE_;
IOSByteArray * OrgBouncycastleAsn1ASN1Boolean_FALSE_VALUE_;
OrgBouncycastleAsn1ASN1Boolean * OrgBouncycastleAsn1ASN1Boolean_FALSE__;
OrgBouncycastleAsn1ASN1Boolean * OrgBouncycastleAsn1ASN1Boolean_TRUE__;

+ (OrgBouncycastleAsn1ASN1Boolean *)getInstanceWithId:(id)obj {
  return OrgBouncycastleAsn1ASN1Boolean_getInstanceWithId_(obj);
}

+ (OrgBouncycastleAsn1ASN1Boolean *)getInstanceWithBoolean:(jboolean)value {
  return OrgBouncycastleAsn1ASN1Boolean_getInstanceWithBoolean_(value);
}

+ (OrgBouncycastleAsn1ASN1Boolean *)getInstanceWithInt:(jint)value {
  return OrgBouncycastleAsn1ASN1Boolean_getInstanceWithInt_(value);
}

+ (OrgBouncycastleAsn1ASN1Boolean *)getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject:(OrgBouncycastleAsn1ASN1TaggedObject *)obj
                                                                           withBoolean:(jboolean)explicit_ {
  return OrgBouncycastleAsn1ASN1Boolean_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(obj, explicit_);
}

- (instancetype)initWithByteArray:(IOSByteArray *)value {
  if (self = [super init]) {
    if (((IOSByteArray *) nil_chk(value))->size_ != 1) {
      @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"byte value should have 1 byte in it"];
    }
    if (IOSByteArray_Get(value, 0) == 0) {
      self->value_ = OrgBouncycastleAsn1ASN1Boolean_FALSE_VALUE_;
    }
    else if ((IOSByteArray_Get(value, 0) & (jint) 0xff) == (jint) 0xff) {
      self->value_ = OrgBouncycastleAsn1ASN1Boolean_TRUE_VALUE_;
    }
    else {
      self->value_ = OrgBouncycastleUtilArrays_cloneWithByteArray_(value);
    }
  }
  return self;
}

- (instancetype)initWithBoolean:(jboolean)value {
  if (self = [super init]) {
    self->value_ = (value) ? OrgBouncycastleAsn1ASN1Boolean_TRUE_VALUE_ : OrgBouncycastleAsn1ASN1Boolean_FALSE_VALUE_;
  }
  return self;
}

- (jboolean)isTrue {
  return (IOSByteArray_Get(nil_chk(value_), 0) != 0);
}

- (jboolean)isConstructed {
  return NO;
}

- (jint)encodedLength {
  return 3;
}

- (void)encodeWithOrgBouncycastleAsn1ASN1OutputStream:(OrgBouncycastleAsn1ASN1OutputStream *)outArg {
  [((OrgBouncycastleAsn1ASN1OutputStream *) nil_chk(outArg)) writeEncodedWithInt:OrgBouncycastleAsn1BERTags_BOOLEAN withByteArray:value_];
}

- (jboolean)asn1EqualsWithOrgBouncycastleAsn1ASN1Primitive:(OrgBouncycastleAsn1ASN1Primitive *)o {
  if ([o isKindOfClass:[OrgBouncycastleAsn1ASN1Boolean class]]) {
    return IOSByteArray_Get(nil_chk(value_), 0) == IOSByteArray_Get(((OrgBouncycastleAsn1ASN1Boolean *) nil_chk(((OrgBouncycastleAsn1ASN1Boolean *) check_class_cast(o, [OrgBouncycastleAsn1ASN1Boolean class]))))->value_, 0);
  }
  return NO;
}

- (NSUInteger)hash {
  return IOSByteArray_Get(nil_chk(value_), 0);
}

- (NSString *)description {
  return (IOSByteArray_Get(nil_chk(value_), 0) != 0) ? @"TRUE" : @"FALSE";
}

+ (OrgBouncycastleAsn1ASN1Boolean *)fromOctetStringWithByteArray:(IOSByteArray *)value {
  return OrgBouncycastleAsn1ASN1Boolean_fromOctetStringWithByteArray_(value);
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1ASN1Boolean *)other {
  [super copyAllFieldsTo:other];
  other->value_ = value_;
}

+ (void)initialize {
  if (self == [OrgBouncycastleAsn1ASN1Boolean class]) {
    OrgBouncycastleAsn1ASN1Boolean_TRUE_VALUE_ = [IOSByteArray newArrayWithBytes:(jbyte[]){ (jbyte) (jint) 0xff } count:1];
    OrgBouncycastleAsn1ASN1Boolean_FALSE_VALUE_ = [IOSByteArray newArrayWithBytes:(jbyte[]){ 0 } count:1];
    OrgBouncycastleAsn1ASN1Boolean_FALSE__ = [[OrgBouncycastleAsn1ASN1Boolean alloc] initWithBoolean:NO];
    OrgBouncycastleAsn1ASN1Boolean_TRUE__ = [[OrgBouncycastleAsn1ASN1Boolean alloc] initWithBoolean:YES];
    J2OBJC_SET_INITIALIZED(OrgBouncycastleAsn1ASN1Boolean)
  }
}

@end

OrgBouncycastleAsn1ASN1Boolean *OrgBouncycastleAsn1ASN1Boolean_getInstanceWithId_(id obj) {
  OrgBouncycastleAsn1ASN1Boolean_init();
  if (obj == nil || [obj isKindOfClass:[OrgBouncycastleAsn1ASN1Boolean class]]) {
    return (OrgBouncycastleAsn1ASN1Boolean *) check_class_cast(obj, [OrgBouncycastleAsn1ASN1Boolean class]);
  }
  if ([obj isKindOfClass:[IOSByteArray class]]) {
    IOSByteArray *enc = (IOSByteArray *) check_class_cast(obj, [IOSByteArray class]);
    @try {
      return (OrgBouncycastleAsn1ASN1Boolean *) check_class_cast(OrgBouncycastleAsn1ASN1Primitive_fromByteArrayWithByteArray_(enc), [OrgBouncycastleAsn1ASN1Boolean class]);
    }
    @catch (JavaIoIOException *e) {
      @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:JreStrcat("$$", @"failed to construct boolean from byte[]: ", [((JavaIoIOException *) nil_chk(e)) getMessage])];
    }
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:JreStrcat("$$", @"illegal object in getInstance: ", [[nil_chk(obj) getClass] getName])];
}

OrgBouncycastleAsn1ASN1Boolean *OrgBouncycastleAsn1ASN1Boolean_getInstanceWithBoolean_(jboolean value) {
  OrgBouncycastleAsn1ASN1Boolean_init();
  return (value ? OrgBouncycastleAsn1ASN1Boolean_TRUE__ : OrgBouncycastleAsn1ASN1Boolean_FALSE__);
}

OrgBouncycastleAsn1ASN1Boolean *OrgBouncycastleAsn1ASN1Boolean_getInstanceWithInt_(jint value) {
  OrgBouncycastleAsn1ASN1Boolean_init();
  return (value != 0 ? OrgBouncycastleAsn1ASN1Boolean_TRUE__ : OrgBouncycastleAsn1ASN1Boolean_FALSE__);
}

OrgBouncycastleAsn1ASN1Boolean *OrgBouncycastleAsn1ASN1Boolean_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(OrgBouncycastleAsn1ASN1TaggedObject *obj, jboolean explicit_) {
  OrgBouncycastleAsn1ASN1Boolean_init();
  OrgBouncycastleAsn1ASN1Primitive *o = [((OrgBouncycastleAsn1ASN1TaggedObject *) nil_chk(obj)) getObject];
  if (explicit_ || [o isKindOfClass:[OrgBouncycastleAsn1ASN1Boolean class]]) {
    return OrgBouncycastleAsn1ASN1Boolean_getInstanceWithId_(o);
  }
  else {
    return OrgBouncycastleAsn1ASN1Boolean_fromOctetStringWithByteArray_([((OrgBouncycastleAsn1ASN1OctetString *) nil_chk(((OrgBouncycastleAsn1ASN1OctetString *) check_class_cast(o, [OrgBouncycastleAsn1ASN1OctetString class])))) getOctets]);
  }
}

OrgBouncycastleAsn1ASN1Boolean *OrgBouncycastleAsn1ASN1Boolean_fromOctetStringWithByteArray_(IOSByteArray *value) {
  OrgBouncycastleAsn1ASN1Boolean_init();
  if (((IOSByteArray *) nil_chk(value))->size_ != 1) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"BOOLEAN value should have 1 byte in it"];
  }
  if (IOSByteArray_Get(value, 0) == 0) {
    return OrgBouncycastleAsn1ASN1Boolean_FALSE__;
  }
  else if ((IOSByteArray_Get(value, 0) & (jint) 0xff) == (jint) 0xff) {
    return OrgBouncycastleAsn1ASN1Boolean_TRUE__;
  }
  else {
    return [[OrgBouncycastleAsn1ASN1Boolean alloc] initWithByteArray:value];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1ASN1Boolean)