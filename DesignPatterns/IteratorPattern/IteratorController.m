//
//  IteratorPattern
//
//  Created by 贾 on 2019/4/25.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "IteratorController.h"
#import "Iterator/LinkListIterator.h"

@interface IteratorController ()


@end

@implementation IteratorController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 创建集合对象
    LinkList *list = [[LinkList alloc] init];
    [list addItem:@"A"];
    [list addItem:@"B"];
    [list addItem:@"C"];
    [list addItem:@"D"];
    
    
    LinkListIterator *iterator = [LinkListIterator linkListIteratorWithLinkList:list];
//    NSLog(@"%@",[iterator nextObject]);
    Node *node = nil;
    while (node = [iterator nextObject]) {
        NSLog(@"%@--%d",node.item,[iterator hasNext]);
//        if ([node.item isEqualToString:@"C"]) {
//            [iterator resetIterator];
//        }
    }
}


@end
