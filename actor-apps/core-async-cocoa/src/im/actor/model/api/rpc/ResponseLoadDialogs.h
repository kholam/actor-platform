//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/api/rpc/ResponseLoadDialogs.java
//

#ifndef _APResponseLoadDialogs_H_
#define _APResponseLoadDialogs_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Response.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;
@protocol JavaUtilList;

#define APResponseLoadDialogs_HEADER 105

@interface APResponseLoadDialogs : APResponse

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)groups
                    withJavaUtilList:(id<JavaUtilList>)users
                    withJavaUtilList:(id<JavaUtilList>)dialogs;

+ (APResponseLoadDialogs *)fromBytesWithByteArray:(IOSByteArray *)data;

- (id<JavaUtilList>)getDialogs;

- (id<JavaUtilList>)getGroups;

- (jint)getHeaderKey;

- (id<JavaUtilList>)getUsers;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APResponseLoadDialogs)

J2OBJC_STATIC_FIELD_GETTER(APResponseLoadDialogs, HEADER, jint)

FOUNDATION_EXPORT APResponseLoadDialogs *APResponseLoadDialogs_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void APResponseLoadDialogs_initWithJavaUtilList_withJavaUtilList_withJavaUtilList_(APResponseLoadDialogs *self, id<JavaUtilList> groups, id<JavaUtilList> users, id<JavaUtilList> dialogs);

FOUNDATION_EXPORT APResponseLoadDialogs *new_APResponseLoadDialogs_initWithJavaUtilList_withJavaUtilList_withJavaUtilList_(id<JavaUtilList> groups, id<JavaUtilList> users, id<JavaUtilList> dialogs) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void APResponseLoadDialogs_init(APResponseLoadDialogs *self);

FOUNDATION_EXPORT APResponseLoadDialogs *new_APResponseLoadDialogs_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APResponseLoadDialogs)

typedef APResponseLoadDialogs ImActorModelApiRpcResponseLoadDialogs;

#endif // _APResponseLoadDialogs_H_