//
//  Vertex.m
//  VisitorPattern
//
//  Created by 贾 on 2019/5/7.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "Vertex.h"

@implementation Vertex

@synthesize lastChild;

@synthesize location;

@synthesize size;
- (void)acceptMarkVisitor:(id<MarkVisitor>)visitor
{
    [visitor visitVertex:self];
}
@end
