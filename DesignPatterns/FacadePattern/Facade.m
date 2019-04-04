//
//  Facade.m
//  DesignPatterns
//
//  Created by 贾 on 2019/4/4.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import "Facade.h"
#import "AModule.h"
#import "BModule.h"
#import "CModule.h"

@implementation Facade

- (void)test
{
    AModule *a = [AModule new];
    [a testA];
    BModule *b = [BModule new];
    [b testB];
    CModule *c = [CModule new];
    [c testC];
}
@end
