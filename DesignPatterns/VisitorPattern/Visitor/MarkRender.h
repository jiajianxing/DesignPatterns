//
//  MarkRender.h
//  VisitorPattern
//
//  Created by 贾 on 2019/5/7.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import "MarkVisitor.h"

NS_ASSUME_NONNULL_BEGIN

@interface MarkRender : NSObject<MarkVisitor>


- (instancetype)initWithCGContext:(CGContextRef)context;

@end

NS_ASSUME_NONNULL_END
