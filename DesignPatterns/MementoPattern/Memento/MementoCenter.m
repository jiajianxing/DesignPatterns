//
//  MementoCenter.m
//  MementoPattern
//
//  Created by 贾 on 2019/4/28.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "MementoCenter.h"
#import "FastCoder.h"

@implementation MementoCenter

+ (void)saveMementoObject:(id<MementoCenterProtocol>)object withKey:(NSString *)key
{
    NSParameterAssert(object);
    NSParameterAssert(key);
    id data = [object getStatus];
    NSData *tempData = [FastCoder dataWithRootObject:data];
    if (tempData) {
        [[NSUserDefaults standardUserDefaults] setObject:tempData forKey:key];
    }
}

+ (id)mementoObjectWithKey:(NSString *)key
{
    NSParameterAssert(key);
    id data = nil;
    NSData *tempData = [[NSUserDefaults standardUserDefaults] objectForKey:key];
    if (tempData) {
        data = [FastCoder objectWithData:tempData];
    }
    return data;
}

@end
