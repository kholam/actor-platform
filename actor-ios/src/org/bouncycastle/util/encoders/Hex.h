//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/util/encoders/Hex.java
//

#ifndef _OrgBouncycastleUtilEncodersHex_H_
#define _OrgBouncycastleUtilEncodersHex_H_

@class IOSByteArray;
@class JavaIoOutputStream;
@protocol OrgBouncycastleUtilEncodersEncoder;

#include "J2ObjC_header.h"

@interface OrgBouncycastleUtilEncodersHex : NSObject {
}

+ (NSString *)toHexStringWithByteArray:(IOSByteArray *)data;

+ (NSString *)toHexStringWithByteArray:(IOSByteArray *)data
                               withInt:(jint)off
                               withInt:(jint)length;

+ (IOSByteArray *)encodeWithByteArray:(IOSByteArray *)data;

+ (IOSByteArray *)encodeWithByteArray:(IOSByteArray *)data
                              withInt:(jint)off
                              withInt:(jint)length;

+ (jint)encodeWithByteArray:(IOSByteArray *)data
     withJavaIoOutputStream:(JavaIoOutputStream *)outArg;

+ (jint)encodeWithByteArray:(IOSByteArray *)data
                    withInt:(jint)off
                    withInt:(jint)length
     withJavaIoOutputStream:(JavaIoOutputStream *)outArg;

+ (IOSByteArray *)decodeWithByteArray:(IOSByteArray *)data;

+ (IOSByteArray *)decodeWithNSString:(NSString *)data;

+ (jint)decodeWithNSString:(NSString *)data
    withJavaIoOutputStream:(JavaIoOutputStream *)outArg;

- (instancetype)init;

@end

FOUNDATION_EXPORT BOOL OrgBouncycastleUtilEncodersHex_initialized;
J2OBJC_STATIC_INIT(OrgBouncycastleUtilEncodersHex)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT NSString *OrgBouncycastleUtilEncodersHex_toHexStringWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT NSString *OrgBouncycastleUtilEncodersHex_toHexStringWithByteArray_withInt_withInt_(IOSByteArray *data, jint off, jint length);

FOUNDATION_EXPORT IOSByteArray *OrgBouncycastleUtilEncodersHex_encodeWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT IOSByteArray *OrgBouncycastleUtilEncodersHex_encodeWithByteArray_withInt_withInt_(IOSByteArray *data, jint off, jint length);

FOUNDATION_EXPORT jint OrgBouncycastleUtilEncodersHex_encodeWithByteArray_withJavaIoOutputStream_(IOSByteArray *data, JavaIoOutputStream *outArg);

FOUNDATION_EXPORT jint OrgBouncycastleUtilEncodersHex_encodeWithByteArray_withInt_withInt_withJavaIoOutputStream_(IOSByteArray *data, jint off, jint length, JavaIoOutputStream *outArg);

FOUNDATION_EXPORT IOSByteArray *OrgBouncycastleUtilEncodersHex_decodeWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT IOSByteArray *OrgBouncycastleUtilEncodersHex_decodeWithNSString_(NSString *data);

FOUNDATION_EXPORT jint OrgBouncycastleUtilEncodersHex_decodeWithNSString_withJavaIoOutputStream_(NSString *data, JavaIoOutputStream *outArg);

FOUNDATION_EXPORT id<OrgBouncycastleUtilEncodersEncoder> OrgBouncycastleUtilEncodersHex_encoder_;
J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleUtilEncodersHex, encoder_, id<OrgBouncycastleUtilEncodersEncoder>)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleUtilEncodersHex)

#endif // _OrgBouncycastleUtilEncodersHex_H_
