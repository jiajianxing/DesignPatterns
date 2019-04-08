//
//  Entrust.m
//  DesignPatterns
//
//  Created by 贾 on 2019/4/8.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "Entrust.h"

@implementation Entrust

- (void)entrustToSomeBody
{
    if ([self.delegate respondsToSelector:@selector(sayHello)]) {
        [self.delegate sayHello];
    }
}
@end
