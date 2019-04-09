//
//  DepartmentDirector.m
//  ChainResPattern
//
//  Created by 贾 on 2019/4/9.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "DepartmentDirector.h"

@implementation DepartmentDirector
- (void)handleRequest:(NSString *)user salary:(float)salary
{
    if (salary > 500 && salary <= 1000) {
        NSLog(@"%@ 处理了%@涨薪%.2f的请求",NSStringFromClass([self class]),user,salary);
    } else {
        NSLog(@"%@ 无权处理%@涨薪%.2f的请求",NSStringFromClass([self class]),user,salary);
        [self.nextManager handleRequest:user salary:salary];
    }
}
@end
