//
//  LinkList.m
//  IteratorPattern
//
//  Created by 贾 on 2019/4/25.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "LinkList.h"

@interface LinkList()

@property (nonatomic, strong,readwrite) Node *headNode;
/**/
@property (nonatomic) NSInteger numberOfNodes;

@end

@implementation LinkList
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.headNode = [Node new];
    }
    return self;
}
- (void)addItem:(id)item
{
    if (self.headNode == nil) {
        self.headNode = [Node nodeWithItem:item];
    } else {
        [self addItem:item node:self.headNode];
    }
    self.numberOfNodes++;
}

- (void)addItem:(id)item node:(Node *)node
{
    if (node.nextNode == nil) {
        node.nextNode = [Node nodeWithItem:item];
    } else {
        [self addItem:item node:node.nextNode];
    }
}

@end
