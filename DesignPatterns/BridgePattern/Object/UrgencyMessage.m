//
//  UrgencyMessage.m
//  BridgePattern
//
//  Created by 贾 on 2019/3/20.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import "UrgencyMessage.h"

@implementation UrgencyMessage

- (void)sendMessage:(NSString *)message toUser:(NSString *)user
{
    message = [NSString stringWithFormat:@"--加急---%@",message];
    [super sendMessage:message toUser:user];
    //同时下面还可以对加急消息有自己的处理方式
}


@end
