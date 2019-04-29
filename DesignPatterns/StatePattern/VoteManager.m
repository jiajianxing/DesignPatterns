//
//  VoteManager.m
//  StatePattern
//
//  Created by 贾 on 2019/4/29.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "VoteManager.h"
#import "State/NormalState.h"
#import "State/SpiteState.h"
#import "State/RepeatState.h"
#import "State/BlackState.h"

@implementation VoteManager

- (void)vote
{
    static NSInteger oldCount = 0;
    oldCount += 1;
    VoteState *state = nil;
    if (oldCount == 1) {
        state = [NormalState new];
    } else if (oldCount > 1 && oldCount < 3){
        state = [RepeatState new];
    }else if (oldCount >= 3 && oldCount < 5){
        state = [SpiteState new];
    } else if (oldCount >= 5){
        state = [BlackState new];
    }
    [state voteStateWithUser:@"张三"];
}
@end
