//
//  MessageEmail.m
//  BridgePattern
//
//  Created by 贾 on 2019/3/20.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import "MessageEmail.h"

@implementation MessageEmail

- (void)sendMessage:(NSString *)message user:(NSString *)user
{
    NSLog(@"使用Email的方式,发送消息%@,给%@",message,user);
}

@end
