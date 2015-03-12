//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/crypto/asn1/ASN1Sequence.java
//

#ifndef _ImActorModelCryptoAsn1ASN1Sequence_H_
#define _ImActorModelCryptoAsn1ASN1Sequence_H_

@class BSDataInput;
@class BSDataOutput;
@class IOSObjectArray;
@class JavaUtilArrayList;
@protocol JavaUtilList;

#include "J2ObjC_header.h"
#include "im/actor/model/crypto/asn1/ASN1Primitive.h"

@interface ImActorModelCryptoAsn1ASN1Sequence : ImActorModelCryptoAsn1ASN1Primitive {
}

+ (ImActorModelCryptoAsn1ASN1Sequence *)readSequenceWithBSDataInput:(BSDataInput *)dataInput;

- (instancetype)init;

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)sequence;

- (instancetype)initWithImActorModelCryptoAsn1ASN1PrimitiveArray:(IOSObjectArray *)sequence;

- (void)addWithImActorModelCryptoAsn1ASN1Primitive:(ImActorModelCryptoAsn1ASN1Primitive *)item;

- (JavaUtilArrayList *)getSequence;

- (jint)size;

- (ImActorModelCryptoAsn1ASN1Primitive *)getWithInt:(jint)index;

- (void)serializeWithBSDataOutput:(BSDataOutput *)dataOutput;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelCryptoAsn1ASN1Sequence)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ImActorModelCryptoAsn1ASN1Sequence *ImActorModelCryptoAsn1ASN1Sequence_readSequenceWithBSDataInput_(BSDataInput *dataInput);
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelCryptoAsn1ASN1Sequence)

#endif // _ImActorModelCryptoAsn1ASN1Sequence_H_
