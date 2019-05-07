//
//  CanvasView.m
//  VisitorPattern
//
//  Created by 贾 on 2019/5/7.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "CanvasView.h"
#import "MarkRender.h"

@implementation CanvasView
- (void)setMark:(id<Mark>)mark
{
    _mark = mark;
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    MarkRender *render = [[MarkRender alloc] initWithCGContext:context];
    [self.mark acceptMarkVisitor:render];
}

@end
