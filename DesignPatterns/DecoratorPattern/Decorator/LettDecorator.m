//
//  LettDecorator.m
//  DecoratorPattern
//
//  Created by 贾 on 2019/4/3.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import "LettDecorator.h"

@implementation LettDecorator

+ (instancetype)decoratorWithComponent:(AbPancake *)pancake
{
    LettDecorator *ham = [[LettDecorator alloc] init];
    ham.pancake = pancake;
    return ham;
}
- (void)cook
{
    NSLog(@"加了蔬菜");
    [super cook];
}

@end
