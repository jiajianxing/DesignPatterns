//
//  BlackState.m
//  StatePattern
//
//  Created by 贾 on 2019/4/29.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "BlackState.h"

@implementation BlackState

- (void)voteStateWithUser:(NSString *)user
{
    NSLog(@"进入黑名单,禁止使用本系统");
}
@end
