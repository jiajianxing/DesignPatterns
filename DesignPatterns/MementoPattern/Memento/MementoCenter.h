//
//  MementoCenter.h
//  MementoPattern
//
//  Created by 贾 on 2019/4/28.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MementoCenterProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface MementoCenter : NSObject

+ (void)saveMementoObject:(id<MementoCenterProtocol>)object withKey:(NSString *)key;

+ (id)mementoObjectWithKey:(NSString *)key;

@end

NS_ASSUME_NONNULL_END
