//
//  Composite.h
//  CompositePattern
//
//  Created by 贾 on 2019/3/28.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import "Component.h"

NS_ASSUME_NONNULL_BEGIN
//组合对象,，可以包含其它组合对象或者叶子对象
@interface Composite : Component

+ (instancetype)compositeWithName:(NSString *)name;


@end

NS_ASSUME_NONNULL_END
