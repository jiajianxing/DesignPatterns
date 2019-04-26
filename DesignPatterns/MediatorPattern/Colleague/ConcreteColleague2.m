//
//  ConcreteColleague2.m
//  MediatorPattern
//
//  Created by 贾 on 2019/4/26.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "ConcreteColleague2.h"

@implementation ConcreteColleague2
- (void)sendMessage:(NSString *)message
{
    NSLog(@"同事2发送消息:%@",message);
    [self.mediator sendMessage:message colleague:self];
}

- (void)notifyMessage:(NSString *)message
{
    NSLog(@"同事2得到消息:%@",message);
}

@end
