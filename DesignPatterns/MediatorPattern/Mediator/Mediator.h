//
//  Mediator.h
//  MediatorPattern
//
//  Created by 贾 on 2019/4/26.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Colleague;
NS_ASSUME_NONNULL_BEGIN
//抽象同事类(定义同事对象到中介者对象的接口)
@interface Mediator : NSObject

- (void)sendMessage:(NSString *)message colleague:(Colleague *)colleague;

@end

NS_ASSUME_NONNULL_END
