//
//  Pancake.m
//  DecoratorPattern
//
//  Created by 贾 on 2019/4/3.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import "Pancake.h"

@implementation Pancake

- (void)cookPancakeWithEgg:(BOOL)egg ham:(BOOL)ham lettuce:(BOOL)lettuce
{
    if (egg) {
        [self addEgg];
    }
    if (ham) {
        [self addHam];
    }
    if (lettuce) {
        [self addLettuce];
    }
    [self cook];
}

- (void)addEgg
{
    NSLog(@"添加鸡蛋");
}

- (void)addHam
{
    NSLog(@"添加火腿");
}

- (void)addLettuce
{
    NSLog(@"添加生菜");
}

- (void)cook
{
    NSLog(@"做一个煎饼");
}

@end
