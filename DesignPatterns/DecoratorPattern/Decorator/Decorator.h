//
//  Decorator.h
//  DecoratorPattern
//
//  Created by 贾 on 2019/4/3.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import "AbPancake.h"

NS_ASSUME_NONNULL_BEGIN

@interface Decorator : AbPancake

/**/
@property (nonatomic,strong) AbPancake *pancake;

+ (instancetype)decoratorWithComponent:(AbPancake *)pancake;

@end

NS_ASSUME_NONNULL_END
