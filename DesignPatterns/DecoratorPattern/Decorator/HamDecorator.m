//
//  HamDecorator.m
//  DecoratorPattern
//
//  Created by 贾 on 2019/4/3.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import "HamDecorator.h"

@implementation HamDecorator

+ (instancetype)decoratorWithComponent:(AbPancake *)pancake
{
    HamDecorator *ham = [[HamDecorator alloc] init];
    ham.pancake = pancake;
    return ham;
}

- (void)cook
{
    NSLog(@"加了火腿");
    [super cook];
}

@end
