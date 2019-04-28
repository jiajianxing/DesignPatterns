//
//  MementoPattern
//
//  Created by 贾 on 2019/4/26.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "MementoController.h"
#import "MementoCenter.h"
#import "People.h"
#import "NSObject+MementoCenter.h"

@interface MementoController ()

@end

@implementation MementoController

- (void)viewDidLoad {
    [super viewDidLoad];
    People *people = [[People alloc] init];
    people.name = @"张三";
    people.age = 18;
    
//    [MementoCenter saveMementoObject:people withKey:@"key"];
//    people.name = @"李四";
//    id p = [MementoCenter mementoObjectWithKey:@"key"];
//    [people recoverFromStatus:p];
    
    [people saveMementoWithKey:@"key"];
    people.name = @"李四";
    [people recoverStatusWithKey:@"key"];
    NSLog(@"name:%@--age:%ld",people.name,(long)people.age);
}


@end
