//
//  Manager.h
//  ChainResPattern
//
//  Created by 贾 on 2019/4/9.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RequestModel.h"

NS_ASSUME_NONNULL_BEGIN
//抽象类
@interface Manager : NSObject
/*下一个处理请求的对象*/
@property (nonatomic,strong) Manager *nextManager;

#pragma mark - 多请求处理方式一

//调薪业务
- (void)handleRequest:(NSString *)user salary:(float)salary;
//换岗位业务
- (void)handleChangePosition:(NSString *)user;

#pragma mark - 多请求处理方式二(具体的业务处理在子类根据model的type去判断处理)
- (void)handleRequest:(RequestModel *)model;

@end

NS_ASSUME_NONNULL_END
