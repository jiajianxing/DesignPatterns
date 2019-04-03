//
//  EggDecorator.m
//  DecoratorPattern
//
//  Created by 贾 on 2019/4/3.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import "EggDecorator.h"

@implementation EggDecorator

+ (instancetype)decoratorWithComponent:(AbPancake *)pancake
{
    EggDecorator *ham = [[EggDecorator alloc] init];
    ham.pancake = pancake;
    return ham;
}
- (void)cook
{
    NSLog(@"加一个鸡蛋");
    [super cook];
}

@end
