//
//  AndFilter.m
//  FilterPattern
//
//  Created by 贾 on 2019/3/21.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import "AndFilter.h"

@interface AndFilter()
/**/
@property (nonatomic,strong) Filter *filter;
/**/
@property (nonatomic,strong) Filter *otherFilter;

@end

@implementation AndFilter
- (void)andFilter:(Filter *)filter otherFilter:(Filter *)otherFilter
{
    self.filter = filter;
    self.otherFilter = otherFilter;
}

- (NSArray<Person *> *)filter:(NSArray<Person *> *)persons
{
    NSArray *list = [self.filter filter:persons];
    return [self.otherFilter filter:list];
}

@end
