//
//  AbStractFactory.m
//  AbstractFactory
//
//  Created by 贾 on 2019/3/18.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import "AbStractFactory.h"


@implementation AbStractFactory

- (Shape *)getShape:(ShapeType)shapeType
{
    return [Shape new];
}
- (Color *)getColor:(ColorType)colorType
{
    return [Color new];
}

@end
