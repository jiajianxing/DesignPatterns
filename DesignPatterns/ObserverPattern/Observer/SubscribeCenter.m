//
//  SubscribeCenter.m
//  ObserverPattern
//
//  Created by 贾 on 2019/4/29.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "SubscribeCenter.h"

static NSMutableDictionary *_subscribeDic = nil;
@implementation SubscribeCenter
+ (void)initialize
{
    if (self == [SubscribeCenter class]) {
        _subscribeDic = [NSMutableDictionary dictionary];
    }
}

#pragma mark - 订阅号
+ (void)createSubscription:(NSString *)subscription
{
    NSParameterAssert(subscription);
    [self existSubscription:subscription];
}

+ (void)removeSubscription:(NSString *)subscription
{
    NSParameterAssert(subscription);
    NSHashTable *hashTable = _subscribeDic[subscription];
    if (hashTable) {
        [_subscribeDic removeObjectForKey:subscription];
    }
}
#pragma mark - 客户
+ (void)addCustomer:(id<SubscribeCenterProtocol>)customer subscription:(NSString *)subscription
{
    NSParameterAssert(customer);
    NSParameterAssert(subscription);
    NSHashTable *hashTable = [self existSubscription:subscription];
    [hashTable addObject:customer];
}

+ (void)removeCustomer:(id<SubscribeCenterProtocol>)customer
      withSubscription:(NSString *)subscription
{
    NSParameterAssert(subscription);
    NSHashTable *hashTable = _subscribeDic[subscription];
    [hashTable removeObject:customer];
    
}
#pragma mark - 发送消息
+ (void)sendMessage:(id)message toSubscription:(NSString *)subscription
{
    NSParameterAssert(subscription);
    NSHashTable *hashTable = _subscribeDic[subscription];
    if (hashTable) {
        NSLog(@"hashtable %@",hashTable);
        NSEnumerator *enumerator = [hashTable objectEnumerator];
        id<SubscribeCenterProtocol> object = nil;
        while (object = [enumerator nextObject]) {
            if ([object respondsToSelector:@selector(subscribeMessage:subscription:)]) {
                [object subscribeMessage:message subscription:subscription];
            }
        }
    }
}


#pragma - 私有方法
+ (NSHashTable *)existSubscription:(NSString *)subscription
{
    NSHashTable *hashTable = [_subscribeDic objectForKey:subscription];
    if (hashTable == nil) {
        hashTable = [NSHashTable weakObjectsHashTable];
        _subscribeDic[subscription] = hashTable;
    }
    return hashTable;
}

@end
