//
//  IteratorProtocol.h
//  DesignPatterns
//
//  Created by 贾 on 2019/4/25.
//  Copyright © 2019 GTYK. All rights reserved.
//
@protocol IteratorProtocol <NSObject>

@required
//下一个对象
- (id)nextObject;
//重置
- (void)resetIterator;
//是否有下一个
- (BOOL)hasNext;

@end
