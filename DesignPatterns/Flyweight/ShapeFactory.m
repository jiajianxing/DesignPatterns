//
//  ShapeFactory.m
//  DesignPatterns
//
//  Created by 贾 on 2019/4/8.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "ShapeFactory.h"

@implementation ShapeFactory

- (Shape *)shapeWithType:(ShapeType)type
{
    //懒加载shapePools,初始化享元池
    if (self.shapePools == nil) {
        self.shapePools = [NSMutableDictionary dictionary];
    }
    //从享元池取
    Shape *shape =[self.shapePools objectForKey:@(type)];
    
    if (!shape) {
        shape = [[Shape alloc] init];
        switch (type) {
            case kCircle:
                shape.shapeName = @"圆";
             
                break;
            case kArc:
                shape.shapeName = @"弧";
              
                break;
            case kRect:
                shape.shapeName = @"方形";
                break;
            default:
                break;
        }
        self.shapePools[@(type)] = shape;
    }
    return shape;
}

//- (void)detailType
//{
//    NSArray *array = self.shapePools.allKeys;
//    for (NSNumber *key in array) {
//        NSLog(@"类型,%@%@",key,self.shapePools[key]);
//    }
//}

@end
