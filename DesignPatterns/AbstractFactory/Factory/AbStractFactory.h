//
//  AbStractFactory.h
//  AbstractFactory
//
//  Created by 贾 on 2019/3/18.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Color.h"
#import "Shape.h"

typedef NS_OPTIONS(NSUInteger, ShapeType){
    ShapeTypeRectAngle,
    ShapeTypeSquare,
    ShapeTypeCircle,
    ShapeTypeUnknown,
};
typedef NS_OPTIONS(NSUInteger, ColorType){
    ColorTypeRed,
    ColorTypeGreen,
    ColorTypeBlue,
};



NS_ASSUME_NONNULL_BEGIN

@interface AbStractFactory : NSObject


- (Shape *)getShape:(ShapeType)shapeType;

- (Color *)getColor:(ColorType)colorType;

@end

NS_ASSUME_NONNULL_END
