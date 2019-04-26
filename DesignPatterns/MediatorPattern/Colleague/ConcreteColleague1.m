//
//  ConcreteColleague1.m
//  MediatorPattern
//
//  Created by 贾 on 2019/4/26.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "ConcreteColleague1.h"

@implementation ConcreteColleague1

- (void)sendMessage:(NSString *)message
{
    NSLog(@"同事1发送消息:%@",message);
    [self.mediator sendMessage:message colleague:self];
}

- (void)notifyMessage:(NSString *)message
{
    NSLog(@"同事1得到消息:%@",message);
}

@end
