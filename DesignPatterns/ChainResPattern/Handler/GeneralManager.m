//
//  GeneralManager.m
//  ChainResPattern
//
//  Created by 贾 on 2019/4/9.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "GeneralManager.h"

@implementation GeneralManager

- (void)handleRequest:(NSString *)user salary:(float)salary
{
    if (salary > 1000 && salary <= 3000) {
        NSLog(@"%@ 处理了%@涨薪%.2f的请求",NSStringFromClass([self class]),user,salary);
    } else {
        NSLog(@"%@你咋涨这么多薪资呢?没法批",NSStringFromClass([self class]));
    }
}
@end
