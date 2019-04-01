//
//  BuilderPattern
//
//  Created by 贾 on 2019/3/18.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import "BuilderController.h"
#import "MealBuilder.h"

@interface BuilderController ()

@end

@implementation BuilderController

- (void)viewDidLoad {
    [super viewDidLoad];
    MealBuilder *builder = [MealBuilder new];
    Meal *vegMeal =  [builder prepareVegMeal];
    [vegMeal showItems];
    NSLog(@"veg meal 总价格 %f",[vegMeal getCost]);
    
    Meal *vegNonMeal =  [builder prepareNonVegMeal];
    [vegNonMeal showItems];
    NSLog(@"veg non meal 总价格 %f",[vegNonMeal getCost]);
}


@end
