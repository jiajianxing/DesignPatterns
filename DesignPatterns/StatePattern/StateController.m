//
//  StatePattern
//
//  Created by 贾 on 2019/4/29.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "StateController.h"
#import "VoteManager.h"

@interface StateController ()

@end

@implementation StateController

- (void)viewDidLoad {
    [super viewDidLoad];
    VoteManager *manager = [VoteManager new];
    for (int i = 0; i < 5; i++) {
        [manager vote];
    }
}


@end
