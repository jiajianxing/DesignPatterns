//
//  Burger.m
//  BuilderPattern
//
//  Created by 贾 on 2019/3/18.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import "Burger.h"
#import "Wrapper.h"

@implementation Burger

- (Pack *)pack
{
    return [Wrapper new];
}

@end
