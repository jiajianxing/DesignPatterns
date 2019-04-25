//
//  LinkListIterator.m
//  IteratorPattern
//
//  Created by 贾 on 2019/4/25.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "LinkListIterator.h"
@interface LinkListIterator ()
/**/
@property (nonatomic,strong) LinkList *linkList;
/**/
@property (nonatomic,strong) Node *currentNode;

@end

@implementation LinkListIterator

+ (instancetype)linkListIteratorWithLinkList:(LinkList *)linkList
{
    LinkListIterator *iterator = [LinkListIterator new];
    iterator.linkList = linkList;
    iterator.currentNode = linkList.headNode;
    return iterator;
}


- (id)nextObject {
    self.currentNode = self.currentNode.nextNode;
    return self.currentNode;
}

- (void)resetIterator
{
    self.currentNode = self.linkList.headNode;
}

- (BOOL)hasNext
{
    return self.currentNode.nextNode ? YES : NO;
}

@end
