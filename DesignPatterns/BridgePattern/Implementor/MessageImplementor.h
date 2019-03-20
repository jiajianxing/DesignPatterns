//
//  MessageImplementor.h
//  BridgePattern
//
//  Created by 贾 on 2019/3/20.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MessageImplementor : NSObject

//实现发送消息的统一接口
- (void)sendMessage:(NSString *)message user:(NSString *)user;

@end

NS_ASSUME_NONNULL_END
