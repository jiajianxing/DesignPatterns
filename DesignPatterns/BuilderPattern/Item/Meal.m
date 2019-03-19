//
//  Meal.m
//  BuilderPattern
//
//  Created by 贾 on 2019/3/18.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import "Meal.h"
#import "Item.h"

@interface Meal ()
/**/
@property (nonatomic,strong) NSMutableArray <Item *>*items;

@end

@implementation Meal

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.items = [NSMutableArray array];
    }
    return self;
}
-(void)addItem:(Item *)item
{
    [self.items addObject:item];
}
- (float)getCost
{
    float cost = 0.0;
    for (Item *item in self.items) {
        cost += item.price;
    }
    return cost;
}

- (void)showItems
{
    for (Item  *item in self.items) {
        NSLog(@"Item name:%@ ,Packing:%@ ,Price:%f", item.name,item.pack,item.price);
    }
}


@end
