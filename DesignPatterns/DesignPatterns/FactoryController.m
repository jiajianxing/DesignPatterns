//
//  DesignPatterns
//
//  Created by 贾 on 2019/3/18.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import "FactoryController.h"
#import "ShapeFactory.h"
#import "Shape.h"

@interface FactoryController ()

@end

@implementation FactoryController

/**
 工厂模式:
 属于创建性模式,在创建对象时不会对客户端暴露创建逻辑,并且是通过一个共同的接口来执行新创建的对象
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    ShapeFactory *factory = [[ShapeFactory alloc] init];
    Shape *shape1 = [factory getShape:ShapeTypeRectAngle];
    [shape1 draw];
    
    Shape *shape2 = [factory getShape:ShapeTypeSquare];
    [shape2 draw];
    
    Shape *shape3 = [factory getShape:ShapeTypeCircle];
    [shape3 draw];
    
}


@end
