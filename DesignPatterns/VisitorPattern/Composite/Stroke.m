//
//  Stroke.m
//  VisitorPattern
//
//  Created by 贾 on 2019/5/7.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "Stroke.h"
@interface Stroke()
/**/
@property (nonatomic,strong) NSMutableArray *children;

@end

@implementation Stroke
@dynamic location;
- (void)setLocation:(CGPoint)location
{
    
}

- (CGPoint)location
{
    if ([self.children count] > 0) {
        id<Mark> child = [self.children objectAtIndex:0];
        return [child location];
    }
    return CGPointZero;
}

@synthesize lastChild;

@synthesize size;

- (instancetype)init
{
    self = [super init];
    if (self) {
        _children = [NSMutableArray array];
    }
    return self;
}

- (void)addMark:(id<Mark>)mark
{
    [self.children addObject:mark];
}

- (void)removeMark:(id<Mark>)mark
{
    [self.children removeObject:mark];
}

- (id<Mark>)lastChild
{
    return [self.children lastObject];
}

- (void)acceptMarkVisitor:(id<MarkVisitor>)visitor
{
    for (id<Mark> dot in self.children) {
        [dot acceptMarkVisitor:visitor];
    }
    [visitor visitStroke:self];
}

@end
