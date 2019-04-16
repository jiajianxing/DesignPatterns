//
//  DivNode.m
//  InterpreterPattern
//
//  Created by 贾 on 2019/4/16.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "DivNode.h"

@implementation DivNode
+ (instancetype)symbolNodeWithLeft:(Node *)left right:(Node *)right
{
    DivNode *node = [[DivNode alloc] init];
    node.leftN = left;
    node.rightN = right;
    return node;
}

- (int)interpret
{
    return self.leftN.interpret / self.rightN.interpret;
}
@end
