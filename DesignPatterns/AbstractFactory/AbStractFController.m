//
//  ViewController.m
//  AbStractFactory
//
//  Created by 贾 on 2019/4/3.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import "AbStractFController.h"
#import "FactoryPeoducer.h"
@interface AbStractFController ()

@end

@implementation AbStractFController

- (void)viewDidLoad {
    [super viewDidLoad];
    AbStractFactory *shapeFactory = [FactoryPeoducer getFactory:FactoryTypeShape];
    Shape *shape = [shapeFactory getShape:ShapeTypeCircle];
    [shape draw];
    
    Shape *shape1 = [shapeFactory getShape:ShapeTypeSquare];
    [shape1 draw];
    
    
    AbStractFactory *colorFacroty = [FactoryPeoducer getFactory:FactoryTypeColor];
    Color *color = [colorFacroty getColor:ColorTypeGreen];
    [color fill];
}


@end
