//
//  CanvasView.h
//  VisitorPattern
//
//  Created by 贾 on 2019/5/7.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Mark.h"

NS_ASSUME_NONNULL_BEGIN

@interface CanvasView : UIView

@property (nonatomic, strong) id <Mark> mark;


@end

NS_ASSUME_NONNULL_END
