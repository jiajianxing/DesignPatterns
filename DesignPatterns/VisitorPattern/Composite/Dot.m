//
//  Dot.m
//  VisitorPattern
//
//  Created by 贾 on 2019/5/7.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "Dot.h"

@implementation Dot

@synthesize lastChild;

@synthesize size;

@synthesize location;

- (void)acceptMarkVisitor:(id<MarkVisitor>)visitor
{
    [visitor visitDot:self];
}

@end
