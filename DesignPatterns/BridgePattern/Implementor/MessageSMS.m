//
//  MessageSMS.m
//  BridgePattern
//
//  Created by 贾 on 2019/3/20.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import "MessageSMS.h"

@implementation MessageSMS


- (void)sendMessage:(NSString *)message user:(NSString *)user
{
    NSLog(@"使用站内短消息的方式,发送消息%@,给%@",message,user);
}


@end
