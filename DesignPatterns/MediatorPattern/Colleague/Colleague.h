//
//  Colleague.h
//  MediatorPattern
//
//  Created by 贾 on 2019/4/26.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mediator.h"

NS_ASSUME_NONNULL_BEGIN
//抽象同事类
@interface Colleague : NSObject
/**/
@property (nonatomic,strong) Mediator *mediator;

+ (Colleague *)colleageWithMediator:(Mediator *)mediator;

- (void)sendMessage:(NSString *)message;

- (void)notifyMessage:(NSString *)message;

@end

NS_ASSUME_NONNULL_END
