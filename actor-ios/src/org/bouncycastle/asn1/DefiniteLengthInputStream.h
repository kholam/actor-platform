//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/DefiniteLengthInputStream.java
//

#ifndef _OrgBouncycastleAsn1DefiniteLengthInputStream_H_
#define _OrgBouncycastleAsn1DefiniteLengthInputStream_H_

@class IOSByteArray;
@class JavaIoInputStream;

#include "J2ObjC_header.h"
#include "org/bouncycastle/asn1/LimitedInputStream.h"

@interface OrgBouncycastleAsn1DefiniteLengthInputStream : OrgBouncycastleAsn1LimitedInputStream {
}

- (instancetype)initWithJavaIoInputStream:(JavaIoInputStream *)inArg
                                  withInt:(jint)length;

- (jint)getRemaining;

- (jint)read;

- (jint)readWithByteArray:(IOSByteArray *)buf
                  withInt:(jint)off
                  withInt:(jint)len;

- (IOSByteArray *)toByteArray;

@end

FOUNDATION_EXPORT BOOL OrgBouncycastleAsn1DefiniteLengthInputStream_initialized;
J2OBJC_STATIC_INIT(OrgBouncycastleAsn1DefiniteLengthInputStream)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT IOSByteArray *OrgBouncycastleAsn1DefiniteLengthInputStream_EMPTY_BYTES_;
J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleAsn1DefiniteLengthInputStream, EMPTY_BYTES_, IOSByteArray *)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1DefiniteLengthInputStream)

#endif // _OrgBouncycastleAsn1DefiniteLengthInputStream_H_
