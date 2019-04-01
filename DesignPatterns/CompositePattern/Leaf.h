//
//  Leaf.h
//  CompositePattern
//
//  Created by 贾 on 2019/3/28.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import "Component.h"

NS_ASSUME_NONNULL_BEGIN
//叶子对象
@interface Leaf : Component

+ (instancetype)leafWithName:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
