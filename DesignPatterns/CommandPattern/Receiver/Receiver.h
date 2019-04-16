//
//  Receiver.h
//  DesignPatterns
//
//  Created by 贾 on 2019/4/16.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Receiver : NSObject

- (void)bindView:(UIView *)view;

- (void)makeViewLighter:(CGFloat)quantity;

- (void)makeViewDarker:(CGFloat)quantity;

@end

NS_ASSUME_NONNULL_END
