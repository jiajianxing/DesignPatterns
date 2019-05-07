//
//  MarkRender.m
//  VisitorPattern
//
//  Created by 贾 on 2019/5/7.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "MarkRender.h"
#import "Vertex.h"
#import "Dot.h"
#import "Stroke.h"
@interface MarkRender()

@property (nonatomic, assign) CGContextRef context;
/**/
@property (nonatomic,assign) BOOL shouldMoveContextToDot;


@end

@implementation MarkRender

- (instancetype)initWithCGContext:(CGContextRef)context
{
    self = [super init];
    if (self) {
        _context = context;
        _shouldMoveContextToDot = YES;
    }
    return self;
}


- (void)visitMark:(id<Mark>)mark
{
    
}
- (void)visitDot:(Dot *)dot
{
    CGFloat x = dot.location.x;
    CGFloat y = dot.location.y;
    CGRect frame = CGRectMake(x, y, 2, 2);
    CGContextSetFillColorWithColor(self.context, [UIColor blackColor].CGColor);
    CGContextFillEllipseInRect(self.context, frame);
}
- (void)visitVertex:(Vertex *)vertex {
    CGFloat x = vertex.location.x;
    CGFloat y = vertex.location.y;
    if (self.shouldMoveContextToDot) {
        CGContextMoveToPoint(self.context, x, y);
        _shouldMoveContextToDot = NO;
    } else {
        CGContextAddLineToPoint(self.context, x, y);
    }
    
}
- (void)visitStroke:(Stroke *)stroke
{
    CGContextSetStrokeColorWithColor(self.context, [UIColor blueColor].CGColor);
    CGContextSetLineWidth(self.context, 1);
    CGContextSetLineCap(self.context, kCGLineCapRound);
    CGContextStrokePath(self.context);
    self.shouldMoveContextToDot = YES;
}



@end
