//
//  DivNode.m
//  InterpreterPattern
//
//  Created by 贾 on 2019/4/16.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "DivNode.h"

@implementation DivNode

- (int)interpret
{
    return self.leftN.interpret / self.rightN.interpret;
}
@end
