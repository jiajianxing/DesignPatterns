//
//  ShapeFactory.h
//  DesignPatterns
//
//  Created by 贾 on 2019/3/18.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef NS_OPTIONS(NSUInteger, ShapeType){
    ShapeTypeRectAngle,
    ShapeTypeSquare,
    ShapeTypeCircle,
    ShapeTypeUnknown,
};

@class Shape;

NS_ASSUME_NONNULL_BEGIN

@interface ShapeFactory : NSObject

- (Shape *)getShape:(ShapeType)shapeType;

@end

NS_ASSUME_NONNULL_END
