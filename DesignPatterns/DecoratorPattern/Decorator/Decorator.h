//
//  Decorator.h
//  DecoratorPattern
//
//  Created by 贾 on 2019/4/3.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import "AbPancake.h"

NS_ASSUME_NONNULL_BEGIN
//装饰器的接口，需要跟被装饰的对象实现同样的接口 
@interface Decorator : AbPancake

/*持有被装饰的组件对象 */
@property (nonatomic,strong) AbPancake *pancake;
//通过构造方法传入被装饰的对象
+ (instancetype)decoratorWithComponent:(AbPancake *)pancake;

@end

NS_ASSUME_NONNULL_END
