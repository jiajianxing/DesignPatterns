//
//  AdvanceMediaPlayer.h
//  AdapterPattern
//
//  Created by 贾 on 2019/3/19.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AdvanceMediaPlayer : NSObject

- (void)playVlc:(NSString *)fileName;

- (void)playMp4:(NSString *)fileName;

@end

NS_ASSUME_NONNULL_END
