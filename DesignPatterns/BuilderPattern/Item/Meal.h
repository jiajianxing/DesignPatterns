//
//  Meal.h
//  BuilderPattern
//
//  Created by 贾 on 2019/3/18.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Item;
NS_ASSUME_NONNULL_BEGIN
//套餐
@interface Meal : NSObject

-(void)addItem:(Item *)item;

- (float)getCost;

- (void)showItems;

@end

NS_ASSUME_NONNULL_END
