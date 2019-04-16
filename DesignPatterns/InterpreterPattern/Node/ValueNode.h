//
//  ValueNode.h
//  InterpreterPattern
//
//  Created by 贾 on 2019/4/16.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "Node.h"

NS_ASSUME_NONNULL_BEGIN

@interface ValueNode : Node

+ (instancetype)valueNodeWithValue:(int)value;

@end

NS_ASSUME_NONNULL_END
