//
//  MealBuilder.m
//  BuilderPattern
//
//  Created by 贾 on 2019/3/18.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import "MealBuilder.h"

#import "VegBurger.h"
#import "ChickenBurger.h"
#import "Coke.h"
#import "Pepsi.h"

@implementation MealBuilder

- (Meal *)prepareVegMeal
{
    Meal *meal = [Meal new];
    [meal addItem:[VegBurger new]];
    [meal addItem:[Coke new]];
    return meal;
}
- (Meal *)prepareNonVegMeal
{
    Meal *meal = [Meal new];
    [meal addItem:[ChickenBurger new]];
    [meal addItem:[Pepsi new]];
    return meal;
}
@end
