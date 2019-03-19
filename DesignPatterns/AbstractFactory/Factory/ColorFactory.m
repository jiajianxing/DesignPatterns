//
//  ColorFactory.m
//  AbstractFactory
//
//  Created by 贾 on 2019/3/18.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import "ColorFactory.h"
#import "Red.h"
#import "Green.h"
#import "Blue.h"

@implementation ColorFactory

- (Color *)getColor:(ColorType)colorType
{
    if (colorType == ColorTypeRed) {
        return [Red new];
    } else if (colorType == ColorTypeBlue){
        return [Blue new];
    } else if (colorType == ColorTypeGreen){
        return [Green new];
    }
    return nil;
}

@end
