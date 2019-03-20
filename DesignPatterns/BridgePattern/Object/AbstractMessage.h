//
//  AbstractMessage.h
//  BridgePattern
//
//  Created by 贾 on 2019/3/20.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MessageImplementor.h"

NS_ASSUME_NONNULL_BEGIN

//抽象的消息对象
@interface AbstractMessage : NSObject

- (void)abstractMessage:(MessageImplementor *)impl;

- (void)sendMessage:(NSString *)message toUser:(NSString *)user;

@end

NS_ASSUME_NONNULL_END
