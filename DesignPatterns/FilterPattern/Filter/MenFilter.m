//
//  MenFilter.m
//  FilterPattern
//
//  Created by 贾 on 2019/3/21.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import "MenFilter.h"

@implementation MenFilter

- (NSArray<Person *> *)filter:(NSArray<Person *> *)persons
{
    NSMutableArray *result = [NSMutableArray array];
    for (Person *person in persons) {
        if (person.genderType == GenderTypeMen) {
            NSLog(@"%@",person.name);
            [result addObject:person];
        }
    }
    return [result copy];
}

@end
