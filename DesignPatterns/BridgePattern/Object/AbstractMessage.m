//
//  AbstractMessage.m
//  BridgePattern
//
//  Created by 贾 on 2019/3/20.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import "AbstractMessage.h"

@interface AbstractMessage()

/*持有一个实现部分的对象*/
@property (nonatomic,strong) MessageImplementor *impl;

@end

@implementation AbstractMessage

//构造方法，传入实现部分的对象
- (void)abstractMessage:(MessageImplementor *)impl
{
    self.impl = impl;
}
//发送消息，转调实现部分的方法 
- (void)sendMessage:(NSString *)message toUser:(NSString *)user
{
    [self.impl sendMessage:message user:user];
}

@end
