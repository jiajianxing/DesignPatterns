//
//  MealBuilder.h
//  BuilderPattern
//
//  Created by 贾 on 2019/3/18.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Meal.h"

NS_ASSUME_NONNULL_BEGIN

@interface MealBuilder : NSObject

- (Meal *)prepareVegMeal;

- (Meal *)prepareNonVegMeal;

@end

NS_ASSUME_NONNULL_END
