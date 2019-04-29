//
//  SpiteState.m
//  StatePattern
//
//  Created by 贾 on 2019/4/29.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "SpiteState.h"

@implementation SpiteState

- (void)voteStateWithUser:(NSString *)user
{
    NSLog(@"恶意投票,取消投票资格");
}
@end
