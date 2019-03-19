//
//  MediaPlayer.h
//  AdapterPattern
//
//  Created by 贾 on 2019/3/19.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_OPTIONS(NSUInteger, AudioType){
    AudioTypeMP3,
    AudioTypeMP4,
    AudioTypeVLC,
};
NS_ASSUME_NONNULL_BEGIN

@interface MediaPlayer : NSObject

- (void)play:(AudioType)type fileName:(NSString *)fileName;

@end

NS_ASSUME_NONNULL_END
