//
//  People.m
//  MementoPattern
//
//  Created by 贾 on 2019/4/28.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "People.h"

@implementation People

- (id)getStatus
{
    return @{@"name":self.name,
             @"age":@(self.age)
             };
}

- (void)recoverFromStatus:(id)status
{
    NSDictionary *dic = status;
    self.name = dic[@"name"];
    self.age = [dic[@"age"] integerValue];
}
@end
