//
//  NSObject+MementoCenter.h
//  MementoPattern
//
//  Created by 贾 on 2019/4/28.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (MementoCenter)

- (void)saveMementoWithKey:(NSString *)key;

- (void)recoverStatusWithKey:(NSString *)key;

@end

NS_ASSUME_NONNULL_END
