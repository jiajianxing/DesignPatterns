//
//  ShapeFactory.h
//  DesignPatterns
//
//  Created by 贾 on 2019/4/8.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shape.h"

typedef enum {
    kCircle,
    kRect,
    kArc,
}ShapeType;
NS_ASSUME_NONNULL_BEGIN

@interface ShapeFactory : NSObject

/**/
@property (nonatomic,strong) NSMutableDictionary *shapePools;

- (Shape *)shapeWithType:(ShapeType)type;



@end

NS_ASSUME_NONNULL_END
