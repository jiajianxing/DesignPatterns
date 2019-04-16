//
//  LighterCommand.m
//  DesignPatterns
//
//  Created by 贾 on 2019/4/16.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "LighterCommand.h"


//变亮命令(持有receiver,用receiver实现真正的变亮)
@interface LighterCommand()
/**/
@property (nonatomic,strong) Receiver *receiver;
/**/
@property (nonatomic,assign) CGFloat parameter;

@end

@implementation LighterCommand

- (id)initWithReceiver:(Receiver*)receiver parameter:(CGFloat)parameter {
    self = [super init];
    if (self) {
        
        _receiver  = receiver;
        _parameter = parameter;
    }
    
    return self;
}

//命令的执行(需要命令的真正执行者,也就是具有命令行为和作用于服务对象的那个Receiver对象,因为Receiver中有直接作用于服务对象view的行为)
- (void)execute
{
    [self.receiver makeViewLighter:self.parameter];
}
- (void)rollBack
{
    [self.receiver makeViewDarker:self.parameter];
}
@end
