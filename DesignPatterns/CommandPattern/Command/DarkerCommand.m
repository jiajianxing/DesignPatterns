//
//  DarkerCommand.m
//  CommandPattern
//
//  Created by 贾 on 2019/4/16.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "DarkerCommand.h"
//变暗命令(持有receiver,用receiver实现真正的变暗)
@interface DarkerCommand()
/**/
@property (nonatomic,strong) Receiver *receiver;
/**/
@property (nonatomic,assign) CGFloat parameter;

@end

@implementation DarkerCommand

- (id)initWithReceiver:(Receiver*)receiver parameter:(CGFloat)parameter {
    self = [super init];
    if (self) {
        
        _receiver  = receiver;
        _parameter = parameter;
    }
    
    return self;
}
- (void)execute
{
    [self.receiver makeViewDarker:self.parameter];
}

- (void)rollBack
{
    [self.receiver makeViewLighter:self.parameter];
}

@end
