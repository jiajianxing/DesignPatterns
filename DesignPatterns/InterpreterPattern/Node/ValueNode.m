//
//  ValueNode.m
//  InterpreterPattern
//
//  Created by 贾 on 2019/4/16.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "ValueNode.h"

@interface ValueNode()
/**/
@property (nonatomic,assign) int value;

@end

@implementation ValueNode

+ (instancetype)valueNodeWithValue:(int)value
{
    ValueNode  *node = [[ValueNode alloc] init];
    node.value = value;
    return node;
}

- (int)interpret
{
    return self.value;
}

@end
