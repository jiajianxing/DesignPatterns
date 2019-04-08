//
//  Shape.m
//  DesignPatterns
//
//  Created by 贾 on 2019/4/8.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "Shape.h"

@interface Shape()
/**/
@property (nonatomic,strong) NSString *shapeColor;

@end

@implementation Shape

- (void)shapeShowColor:(NSString *)color
{
    self.shapeColor = color;
    NSLog(@"%@--颜色%@",self,color);
}

@end
