//
//  MulNode.m
//  InterpreterPattern
//
//  Created by 贾 on 2019/4/16.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "MulNode.h"

@implementation MulNode

- (int)interpret
{
    return self.leftN.interpret * self.rightN.interpret;
}
@end
