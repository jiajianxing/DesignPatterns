//
//  FilterPattern
//
//  Created by 贾 on 2019/3/21.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import "FilterController.h"
#import "Filter/Filter.h"
#import "Filter/WomenFilter.h"
#import "Filter/MenFilter.h"
#import "Filter/SingleFilter.h"
#import "Filter/AndFilter.h"

@interface FilterController ()

@end

@implementation FilterController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableArray *persons = [NSMutableArray array];
    Person *p = [Person personWithName:@"张三" gender:GenderTypeWomen married:MarriedStatusNone];
    Person *p1 = [Person personWithName:@"李四" gender:GenderTypeMen married:MarriedStatusNone];
    Person *p2 = [Person personWithName:@"zhangliu" gender:GenderTypeWomen married:MarriedStatused];
    Person *p3 = [Person personWithName:@"将就撒" gender:GenderTypeWomen married:MarriedStatusNone];
    Person *p4 = [Person personWithName:@"萨芬就" gender:GenderTypeMen married:MarriedStatusNone];
    Person *p5 = [Person personWithName:@"safa" gender:GenderTypeWomen married:MarriedStatused];
    Person *p6 = [Person personWithName:@"烦死你" gender:GenderTypeMen married:MarriedStatusNone];
    Person *p7 = [Person personWithName:@"吧女" gender:GenderTypeWomen married:MarriedStatused];
    [persons addObject:p];
    [persons addObject:p1];
    [persons addObject:p2];
    [persons addObject:p3];
    [persons addObject:p4];
    [persons addObject:p5];
    [persons addObject:p6];
    [persons addObject:p7];
    
    WomenFilter *womenFilter = [[WomenFilter alloc] init];
    MenFilter *menFilter = [[MenFilter alloc] init];
    SingleFilter *singleFilter = [[SingleFilter alloc] init];
    AndFilter *andFilter = [[AndFilter alloc] init];
    [andFilter andFilter:womenFilter otherFilter:singleFilter];
    NSLog(@"%@",[womenFilter filter:persons]);
    NSLog(@"%@",[menFilter filter:persons]);
    NSLog(@"%@",[singleFilter filter:persons]);
    NSLog(@"%@",[andFilter filter:persons]);
    
    
}


@end
