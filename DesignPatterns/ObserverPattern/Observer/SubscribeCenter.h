//
//  SubscribeCenter.h
//  ObserverPattern
//
//  Created by 贾 on 2019/4/29.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SubscribeCenterProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface SubscribeCenter : NSObject
#pragma mark - 订阅号
/**
 创建订阅号

 @param subscription 订阅号名称
 */
+ (void)createSubscription:(NSString *)subscription;

/**
 移除订阅号

 @param subscription 订阅号名称
 */
+ (void)removeSubscription:(NSString *)subscription;

#pragma mark - 客户
/**
 添加客户到订阅号中(可以直接添加客户,默认会创建订阅号)

 @param customer 客户
 @param subscription 订阅号名称
 */
+ (void)addCustomer:(id<SubscribeCenterProtocol>)customer subscription:(NSString *)subscription;
/**
 移除客户
 
 @param customer 客户
 @param subscription 订阅号名称
 */
+ (void)removeCustomer:(id<SubscribeCenterProtocol>)customer
      withSubscription:(NSString *)subscription;

#pragma mark - 发送消息
/**
 发送消息到具体的订阅号

 @param message 消息
 @param subscription 订阅号名称
 */
+ (void)sendMessage:(id)message toSubscription:(NSString *)subscription;

@end

NS_ASSUME_NONNULL_END
