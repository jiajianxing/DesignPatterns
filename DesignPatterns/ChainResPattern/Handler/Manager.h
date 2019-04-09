//
//  Manager.h
//  ChainResPattern
//
//  Created by 贾 on 2019/4/9.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
//抽象类
@interface Manager : NSObject
/*下一个处理请求的对象*/
@property (nonatomic,strong) Manager *nextManager;

- (void)handleRequest:(NSString *)user salary:(float)salary;

@end

NS_ASSUME_NONNULL_END
