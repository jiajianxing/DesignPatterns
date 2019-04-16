//
//  Invoker.h
//  CommandPattern
//
//  Created by 贾 on 2019/4/12.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandInterface.h"

NS_ASSUME_NONNULL_BEGIN
//存储命令的地方
@interface Invoker : NSObject

+ (instancetype)shareInstance;

- (void)addAndExcute:(id<CommandInterface>)command;

- (void)rollBackAndExcute;

@end

NS_ASSUME_NONNULL_END
