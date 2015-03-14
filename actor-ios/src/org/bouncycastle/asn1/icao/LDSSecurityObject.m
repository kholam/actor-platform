//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/icao/LDSSecurityObject.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/math/BigInteger.h"
#include "java/util/Enumeration.h"
#include "org/bouncycastle/asn1/ASN1Encodable.h"
#include "org/bouncycastle/asn1/ASN1EncodableVector.h"
#include "org/bouncycastle/asn1/ASN1Integer.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1Sequence.h"
#include "org/bouncycastle/asn1/DERSequence.h"
#include "org/bouncycastle/asn1/icao/DataGroupHash.h"
#include "org/bouncycastle/asn1/icao/LDSSecurityObject.h"
#include "org/bouncycastle/asn1/icao/LDSVersionInfo.h"
#include "org/bouncycastle/asn1/x509/AlgorithmIdentifier.h"

__attribute__((unused)) static void OrgBouncycastleAsn1IcaoLDSSecurityObject_checkDatagroupHashSeqSizeWithInt_(OrgBouncycastleAsn1IcaoLDSSecurityObject *self, jint size);

@interface OrgBouncycastleAsn1IcaoLDSSecurityObject () {
 @public
  OrgBouncycastleAsn1ASN1Integer *version__;
  OrgBouncycastleAsn1X509AlgorithmIdentifier *digestAlgorithmIdentifier_;
  IOSObjectArray *datagroupHash_;
  OrgBouncycastleAsn1IcaoLDSVersionInfo *versionInfo_;
}
- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq;

- (void)checkDatagroupHashSeqSizeWithInt:(jint)size;
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1IcaoLDSSecurityObject, version__, OrgBouncycastleAsn1ASN1Integer *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1IcaoLDSSecurityObject, digestAlgorithmIdentifier_, OrgBouncycastleAsn1X509AlgorithmIdentifier *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1IcaoLDSSecurityObject, datagroupHash_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1IcaoLDSSecurityObject, versionInfo_, OrgBouncycastleAsn1IcaoLDSVersionInfo *)

@implementation OrgBouncycastleAsn1IcaoLDSSecurityObject

+ (OrgBouncycastleAsn1IcaoLDSSecurityObject *)getInstanceWithId:(id)obj {
  return OrgBouncycastleAsn1IcaoLDSSecurityObject_getInstanceWithId_(obj);
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq {
  if (self = [super init]) {
    version__ = [[OrgBouncycastleAsn1ASN1Integer alloc] initWithLong:0];
    if (seq == nil || [seq size] == 0) {
      @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"null or empty sequence passed."];
    }
    id<JavaUtilEnumeration> e = [((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(seq)) getObjects];
    version__ = OrgBouncycastleAsn1ASN1Integer_getInstanceWithId_([((id<JavaUtilEnumeration>) nil_chk(e)) nextElement]);
    digestAlgorithmIdentifier_ = OrgBouncycastleAsn1X509AlgorithmIdentifier_getInstanceWithId_([e nextElement]);
    OrgBouncycastleAsn1ASN1Sequence *datagroupHashSeq = OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_([e nextElement]);
    if ([((JavaMathBigInteger *) nil_chk([((OrgBouncycastleAsn1ASN1Integer *) nil_chk(version__)) getValue])) intValue] == 1) {
      versionInfo_ = OrgBouncycastleAsn1IcaoLDSVersionInfo_getInstanceWithId_([e nextElement]);
    }
    OrgBouncycastleAsn1IcaoLDSSecurityObject_checkDatagroupHashSeqSizeWithInt_(self, [((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(datagroupHashSeq)) size]);
    datagroupHash_ = [IOSObjectArray newArrayWithLength:[datagroupHashSeq size] type:OrgBouncycastleAsn1IcaoDataGroupHash_class_()];
    for (jint i = 0; i < [datagroupHashSeq size]; i++) {
      IOSObjectArray_Set(datagroupHash_, i, OrgBouncycastleAsn1IcaoDataGroupHash_getInstanceWithId_([datagroupHashSeq getObjectAtWithInt:i]));
    }
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleAsn1X509AlgorithmIdentifier:(OrgBouncycastleAsn1X509AlgorithmIdentifier *)digestAlgorithmIdentifier
                     withOrgBouncycastleAsn1IcaoDataGroupHashArray:(IOSObjectArray *)datagroupHash {
  if (self = [super init]) {
    version__ = [[OrgBouncycastleAsn1ASN1Integer alloc] initWithLong:0];
    self->version__ = [[OrgBouncycastleAsn1ASN1Integer alloc] initWithLong:0];
    self->digestAlgorithmIdentifier_ = digestAlgorithmIdentifier;
    self->datagroupHash_ = datagroupHash;
    OrgBouncycastleAsn1IcaoLDSSecurityObject_checkDatagroupHashSeqSizeWithInt_(self, ((IOSObjectArray *) nil_chk(datagroupHash))->size_);
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleAsn1X509AlgorithmIdentifier:(OrgBouncycastleAsn1X509AlgorithmIdentifier *)digestAlgorithmIdentifier
                     withOrgBouncycastleAsn1IcaoDataGroupHashArray:(IOSObjectArray *)datagroupHash
                         withOrgBouncycastleAsn1IcaoLDSVersionInfo:(OrgBouncycastleAsn1IcaoLDSVersionInfo *)versionInfo {
  if (self = [super init]) {
    version__ = [[OrgBouncycastleAsn1ASN1Integer alloc] initWithLong:0];
    self->version__ = [[OrgBouncycastleAsn1ASN1Integer alloc] initWithLong:1];
    self->digestAlgorithmIdentifier_ = digestAlgorithmIdentifier;
    self->datagroupHash_ = datagroupHash;
    self->versionInfo_ = versionInfo;
    OrgBouncycastleAsn1IcaoLDSSecurityObject_checkDatagroupHashSeqSizeWithInt_(self, ((IOSObjectArray *) nil_chk(datagroupHash))->size_);
  }
  return self;
}

- (void)checkDatagroupHashSeqSizeWithInt:(jint)size {
  OrgBouncycastleAsn1IcaoLDSSecurityObject_checkDatagroupHashSeqSizeWithInt_(self, size);
}

- (jint)getVersion {
  return [((JavaMathBigInteger *) nil_chk([((OrgBouncycastleAsn1ASN1Integer *) nil_chk(version__)) getValue])) intValue];
}

- (OrgBouncycastleAsn1X509AlgorithmIdentifier *)getDigestAlgorithmIdentifier {
  return digestAlgorithmIdentifier_;
}

- (IOSObjectArray *)getDatagroupHash {
  return datagroupHash_;
}

- (OrgBouncycastleAsn1IcaoLDSVersionInfo *)getVersionInfo {
  return versionInfo_;
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  OrgBouncycastleAsn1ASN1EncodableVector *seq = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
  [seq addWithOrgBouncycastleAsn1ASN1Encodable:version__];
  [seq addWithOrgBouncycastleAsn1ASN1Encodable:digestAlgorithmIdentifier_];
  OrgBouncycastleAsn1ASN1EncodableVector *seqname = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(datagroupHash_))->size_; i++) {
    [seqname addWithOrgBouncycastleAsn1ASN1Encodable:IOSObjectArray_Get(datagroupHash_, i)];
  }
  [seq addWithOrgBouncycastleAsn1ASN1Encodable:[[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:seqname]];
  if (versionInfo_ != nil) {
    [seq addWithOrgBouncycastleAsn1ASN1Encodable:versionInfo_];
  }
  return [[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:seq];
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1IcaoLDSSecurityObject *)other {
  [super copyAllFieldsTo:other];
  other->version__ = version__;
  other->digestAlgorithmIdentifier_ = digestAlgorithmIdentifier_;
  other->datagroupHash_ = datagroupHash_;
  other->versionInfo_ = versionInfo_;
}

@end

OrgBouncycastleAsn1IcaoLDSSecurityObject *OrgBouncycastleAsn1IcaoLDSSecurityObject_getInstanceWithId_(id obj) {
  OrgBouncycastleAsn1IcaoLDSSecurityObject_init();
  if ([obj isKindOfClass:[OrgBouncycastleAsn1IcaoLDSSecurityObject class]]) {
    return (OrgBouncycastleAsn1IcaoLDSSecurityObject *) check_class_cast(obj, [OrgBouncycastleAsn1IcaoLDSSecurityObject class]);
  }
  else if (obj != nil) {
    return [[OrgBouncycastleAsn1IcaoLDSSecurityObject alloc] initWithOrgBouncycastleAsn1ASN1Sequence:OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_(obj)];
  }
  return nil;
}

void OrgBouncycastleAsn1IcaoLDSSecurityObject_checkDatagroupHashSeqSizeWithInt_(OrgBouncycastleAsn1IcaoLDSSecurityObject *self, jint size) {
  if ((size < 2) || (size > OrgBouncycastleAsn1IcaoLDSSecurityObject_ub_DataGroups)) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:JreStrcat("$IC", @"wrong size in DataGroupHashValues : not in (2..", OrgBouncycastleAsn1IcaoLDSSecurityObject_ub_DataGroups, ')')];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1IcaoLDSSecurityObject)