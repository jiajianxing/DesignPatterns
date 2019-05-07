//
//  ViewController.m
//  VisitorPattern
//
//  Created by 贾 on 2019/5/7.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "VisitorController.h"
#import "CanvasView.h"
#import "Composite/Stroke.h"
#import "Composite/Vertex.h"
#import "Composite/Dot.h"

@interface VisitorController ()

@property (nonatomic, strong) id <Mark> parentMark;

@property (nonatomic, strong) CanvasView *canvasView;
@property (nonatomic, assign) CGPoint startPoint;

@end

@implementation VisitorController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.parentMark = [[Stroke alloc] init];
    [self setupView];
}
- (void)setupView
{
    CanvasView *canvasView = [[CanvasView alloc] initWithFrame:self.view.frame];
    canvasView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:canvasView];
    self.canvasView = canvasView;
}

- (void)addMark:(id<Mark>)mark shouldAddToPreviousMark:(BOOL)shouldAddToPreviousMark
{
    if (shouldAddToPreviousMark) {
        [self.parentMark.lastChild addMark:mark];
    } else {
        [self.parentMark addMark:mark];
    }
    self.canvasView.mark = self.parentMark;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    self.startPoint = [[touches anyObject] locationInView:self.canvasView];
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    CGPoint lastPoint = [[touches anyObject] previousLocationInView:self.canvasView];
    if (CGPointEqualToPoint(lastPoint, self.startPoint)) {
        id<Mark> newStroke = [Stroke new];
        [self addMark:newStroke shouldAddToPreviousMark:NO];
    }
    CGPoint currentPoint = [[touches anyObject] locationInView:self.canvasView];
    Vertex *vertex = [Vertex new];
    vertex.location = currentPoint;
    [self addMark:vertex shouldAddToPreviousMark:YES];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    CGPoint lastPoint = [[touches anyObject] previousLocationInView:self.canvasView];
    CGPoint currentPoint = [[touches anyObject] locationInView:self.canvasView];
    if (CGPointEqualToPoint(lastPoint, currentPoint)) {
        Dot *dot = [Dot new];
        dot.location = currentPoint;
        [self addMark:dot shouldAddToPreviousMark:NO];
    }
    self.startPoint = CGPointZero;
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    self.startPoint = CGPointZero;
}

@end
