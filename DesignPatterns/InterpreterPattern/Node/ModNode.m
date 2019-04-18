//
//  ModNode.m
//  InterpreterPattern
//
//  Created by 贾 on 2019/4/16.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "ModNode.h"

@implementation ModNode

- (int)interpret
{
    return self.leftN.interpret % self.rightN.interpret;
}
@end
