//
//  Invoker.m
//  CommandPattern
//
//  Created by 贾 on 2019/4/12.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "Invoker.h"

@interface Invoker()
/**/
@property (nonatomic,strong) NSMutableArray *queue;

@end
//命令的管理者,是需要执行命令的相关方法(比如execute)
@implementation Invoker

+ (instancetype)shareInstance {
    
    static Invoker *shareInstanceValue = nil;
    static dispatch_once_t oncePredicate;
    
    dispatch_once(&oncePredicate, ^{
        
        shareInstanceValue       = [[Invoker alloc] init];
        shareInstanceValue.queue = [NSMutableArray array];
    });
    return shareInstanceValue;
}
//添加命令
- (void)addAndExcute:(id<CommandInterface>)command
{
    NSParameterAssert(command);
    [self.queue addObject:command];
    [command  execute];
}
//撤销命令
- (void)rollBackAndExcute
{
    if (self.queue.count == 0) return;
    [self.queue.lastObject rollBack];
    [self.queue removeLastObject];
}

@end
