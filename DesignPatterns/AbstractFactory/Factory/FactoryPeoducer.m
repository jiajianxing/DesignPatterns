//
//  FactoryPeoducer.m
//  AbstractFactory
//
//  Created by 贾 on 2019/3/18.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import "FactoryPeoducer.h"
#import "ColorFactory.h"
#import "ShapeFactory.h"

@implementation FactoryPeoducer

+ (AbStractFactory *)getFactory:(FactoryType)factoryType
{
    if (factoryType == FactoryTypeColor) {
        return [ColorFactory new];
    } else {
        return [ShapeFactory new];
    }
}

@end
