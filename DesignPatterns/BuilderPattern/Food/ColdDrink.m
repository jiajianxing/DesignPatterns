//
//  ColdDrink.m
//  BuilderPattern
//
//  Created by 贾 on 2019/3/18.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import "ColdDrink.h"
#import "Bottle.h"

@implementation ColdDrink

- (Pack *)pack
{
    return [Bottle new];
}
@end
