//
//  Animal.h
//  ObserverPattern
//
//  Created by 贾 on 2019/4/29.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SubscribeCenterProtocol.h"
NS_ASSUME_NONNULL_BEGIN

@interface Animal : NSObject<SubscribeCenterProtocol>

@end

NS_ASSUME_NONNULL_END
