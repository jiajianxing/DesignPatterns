//
//  Entrust.h
//  DesignPatterns
//
//  Created by 贾 on 2019/4/8.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GTProxy.h"
NS_ASSUME_NONNULL_BEGIN
//委托
@interface Entrust : NSObject

@property (nonatomic,weak) id<GTProxy> delegate;

- (void)entrustToSomeBody;

@end

NS_ASSUME_NONNULL_END
