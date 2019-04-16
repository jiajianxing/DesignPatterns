//
//  SymbolNode.m
//  InterpreterPattern
//
//  Created by 贾 on 2019/4/16.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "SymbolNode.h"
@interface SymbolNode ()


@end

@implementation SymbolNode

+ (instancetype)symbolNodeWithLeft:(Node *)left right:(Node *)right
{
    SymbolNode *node = [[SymbolNode alloc] init];
    node.leftN = left;
    node.rightN = right;
    return node;
}

@end
