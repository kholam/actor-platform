//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/crypto/asn1/ASN1Null.java
//

#include "J2ObjC_source.h"
#include "im/actor/model/crypto/asn1/ASN1Null.h"
#include "im/actor/model/crypto/asn1/ASN1Primitive.h"
#include "im/actor/model/droidkit/bser/DataOutput.h"

@implementation ImActorModelCryptoAsn1ASN1Null

- (void)serializeWithBSDataOutput:(BSDataOutput *)dataOutput {
  [((BSDataOutput *) nil_chk(dataOutput)) writeByteWithInt:ImActorModelCryptoAsn1ASN1Primitive_TAG_NULL];
  [dataOutput writeByteWithInt:0];
}

- (instancetype)init {
  return [super init];
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelCryptoAsn1ASN1Null)
