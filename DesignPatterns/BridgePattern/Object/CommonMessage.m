//
//  CommonMessage.m
//  BridgePattern
//
//  Created by 贾 on 2019/3/20.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import "CommonMessage.h"

@implementation CommonMessage

- (void)sendMessage:(NSString *)message toUser:(NSString *)user
{
    //普通消息什么也不做,直接转发父类的消息
    [super sendMessage:message toUser:user];
}

@end
