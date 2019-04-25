//
//  LinkList.h
//  IteratorPattern
//
//  Created by 贾 on 2019/4/25.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

NS_ASSUME_NONNULL_BEGIN

@interface LinkList : NSObject
/*头结点*/
@property (nonatomic,strong,readonly) Node *headNode;
/*有多少个节点*/
@property (nonatomic,readonly) NSInteger numberOfNodes;
//节点挂载对象
- (void)addItem:(id)item;

@end

NS_ASSUME_NONNULL_END
