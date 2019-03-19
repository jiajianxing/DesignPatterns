//
//  ShapeFactory.m
//  DesignPatterns
//
//  Created by 贾 on 2019/3/18.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import "ShapeFactory.h"
#import "Circle.h"
#import "Square.h"
#import "RectAngle.h"

@implementation ShapeFactory

- (Shape *)getShape:(ShapeType)shapeType
{
    if (shapeType == ShapeTypeCircle) {
        return [[Circle alloc] init];
    } else if (shapeType == ShapeTypeSquare){
        return [[Square alloc] init];
    } else if (shapeType == ShapeTypeRectAngle){
        return [[RectAngle alloc] init];
    }
    return nil;
}

@end
