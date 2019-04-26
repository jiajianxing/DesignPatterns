//
//  Colleague.m
//  MediatorPattern
//
//  Created by 贾 on 2019/4/26.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "Colleague.h"

@implementation Colleague

+ (Colleague *)colleageWithMediator:(Mediator *)mediator
{
    Colleague *colleague = [[[self class] alloc] init];
    colleague.mediator = mediator;
    return colleague;
}

- (void)sendMessage:(NSString *)message
{
    
}

- (void)notifyMessage:(NSString *)message
{
    
}
@end
