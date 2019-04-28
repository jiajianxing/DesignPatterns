//
//  NSObject+MementoCenter.m
//  MementoPattern
//
//  Created by 贾 on 2019/4/28.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "NSObject+MementoCenter.h"
#import "MementoCenter.h"

@implementation NSObject (MementoCenter)

- (void)saveMementoWithKey:(NSString *)key
{
    id<MementoCenterProtocol> obj = (id<MementoCenterProtocol>)self;
    if ([obj respondsToSelector:@selector(getStatus)]) {
        [MementoCenter saveMementoObject:obj withKey:key];
    }
}

- (void)recoverStatusWithKey:(NSString *)key
{
    id status = [MementoCenter mementoObjectWithKey:key];
    id <MementoCenterProtocol> obj = (id<MementoCenterProtocol>)self;
    if ([obj respondsToSelector:@selector(recoverFromStatus:)]) {
        [obj recoverFromStatus:status];
    }
}

@end
