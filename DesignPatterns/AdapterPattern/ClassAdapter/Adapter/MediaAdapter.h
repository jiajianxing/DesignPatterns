//
//  MediaAdapter.h
//  AdapterPattern
//
//  Created by 贾 on 2019/3/19.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MediaPlayer.h"

NS_ASSUME_NONNULL_BEGIN

@interface MediaAdapter : MediaPlayer

+ (instancetype)mediaAdapter:(AudioType)type;

@end

NS_ASSUME_NONNULL_END
