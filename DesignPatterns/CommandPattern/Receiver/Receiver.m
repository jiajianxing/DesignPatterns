//
//  Receiver.m
//  DesignPatterns
//
//  Created by 贾 on 2019/4/16.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "Receiver.h"

@interface Receiver(){
    CGFloat _hue;
    CGFloat _saturation;
    CGFloat _brightness;
    CGFloat _alpha;
}
/**/
@property (nonatomic,strong) UIView *colorV;

@end

@implementation Receiver

- (void)bindView:(UIView *)view
{
    _colorV = view;
    UIColor *color = view.backgroundColor;
    [color getHue:&_hue saturation:&_saturation brightness:&_brightness alpha:&_alpha];
}

- (void)makeViewLighter:(CGFloat)quantity
{
    _brightness += quantity;
    _brightness = MIN(1, _brightness);
    self.colorV.backgroundColor = [UIColor colorWithHue:_hue saturation:_saturation brightness:_brightness alpha:_alpha];
}

- (void)makeViewDarker:(CGFloat)quantity
{
    _brightness -= quantity;
    _brightness  = MAX(0, _brightness);
    
    self.colorV.backgroundColor = [UIColor colorWithHue:_hue
                                                saturation:_saturation
                                                brightness:_brightness
                                                     alpha:_alpha];
}


@end
