//
//  ViewController.m
//  Flyweight
//
//  Created by 贾 on 2019/4/4.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import "FlyWeightVC.h"
#import "ShapeFactory.h"

@interface FlyWeightVC ()

@end

@implementation FlyWeightVC

- (void)viewDidLoad {
    [super viewDidLoad];
    ShapeFactory *factory = [[ShapeFactory alloc] init];
    Shape *circle =  [factory shapeWithType:kCircle];
    Shape *circle1 =  [factory shapeWithType:kCircle];
    [circle shapeShowColor:@"蓝色"];
    [circle1 shapeShowColor:@"白色"];
    
}


@end
