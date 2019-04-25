//
//  Node.h
//  IteratorPattern
//
//  Created by 贾 on 2019/4/25.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Node : NSObject
/*指向下一个节点*/
@property (nonatomic,strong) Node *nextNode;
/*挂载的对象*/
@property (nonatomic,strong) id item;
//构造方法
+ (instancetype)nodeWithItem:(id)item;

@end

NS_ASSUME_NONNULL_END
