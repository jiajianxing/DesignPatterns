//
//  ConcreteMediator.m
//  MediatorPattern
//
//  Created by 贾 on 2019/4/26.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "ConcreteMediator.h"

@implementation ConcreteMediator
- (void)sendMessage:(NSString *)message colleague:(Colleague *)colleague
{
    if ([colleague isEqual:self.colleague1]) {
        [self.colleague2 notifyMessage:message];
    } else {
        [self.colleague1 notifyMessage:message];
    }
}
@end
