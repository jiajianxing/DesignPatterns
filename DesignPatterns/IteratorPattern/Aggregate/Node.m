//
//  Node.m
//  IteratorPattern
//
//  Created by 贾 on 2019/4/25.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "Node.h"

@implementation Node

+ (instancetype)nodeWithItem:(id)item
{
    Node *node = [[[self class] alloc] init];
    node.item = item;
    return node;
}
@end
