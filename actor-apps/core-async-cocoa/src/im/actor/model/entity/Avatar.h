//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/entity/Avatar.java
//

#ifndef _AMAvatar_H_
#define _AMAvatar_H_

#include "J2ObjC_header.h"
#include "im/actor/model/entity/WrapperEntity.h"

@class AMAvatarImage;
@class APAvatar;
@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

@interface AMAvatar : AMWrapperEntity

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithAPAvatar:(APAvatar *)wrapped;

- (instancetype)initWithByteArray:(IOSByteArray *)data;

- (jboolean)isEqual:(id)o;

- (AMAvatarImage *)getFullImage;

- (AMAvatarImage *)getLargeImage;

- (AMAvatarImage *)getSmallImage;

- (NSUInteger)hash;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

#pragma mark Protected

- (void)applyWrappedWithBSBserObject:(APAvatar *)wrapped;

- (APAvatar *)createInstance;

@end

J2OBJC_EMPTY_STATIC_INIT(AMAvatar)

FOUNDATION_EXPORT void AMAvatar_initWithAPAvatar_(AMAvatar *self, APAvatar *wrapped);

FOUNDATION_EXPORT AMAvatar *new_AMAvatar_initWithAPAvatar_(APAvatar *wrapped) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void AMAvatar_initWithByteArray_(AMAvatar *self, IOSByteArray *data);

FOUNDATION_EXPORT AMAvatar *new_AMAvatar_initWithByteArray_(IOSByteArray *data) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void AMAvatar_init(AMAvatar *self);

FOUNDATION_EXPORT AMAvatar *new_AMAvatar_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(AMAvatar)

typedef AMAvatar ImActorModelEntityAvatar;

#endif // _AMAvatar_H_