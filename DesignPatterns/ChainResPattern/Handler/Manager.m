//
//  Manager.m
//  ChainResPattern
//
//  Created by 贾 on 2019/4/9.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "Manager.h"

@implementation Manager

- (void)handleRequest:(NSString *)user salary:(float)salary
{
    [self.nextManager handleRequest:user salary:salary];
}

@end
