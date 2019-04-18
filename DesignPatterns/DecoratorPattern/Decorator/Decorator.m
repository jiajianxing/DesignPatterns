//
//  Decorator.m
//  DecoratorPattern
//
//  Created by 贾 on 2019/4/3.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import "Decorator.h"

@interface Decorator()


@end

@implementation Decorator

+ (instancetype)decoratorWithComponent:(AbPancake *)pancake
{
    Decorator *decorator = [[[self class] alloc] init];
    decorator.pancake = pancake;
    return decorator;
}

- (void)cook
{
    [self.pancake cook];
}

@end
