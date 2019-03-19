//
//  MediaAdapter.m
//  AdapterPattern
//
//  Created by 贾 on 2019/3/19.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import "MediaAdapter.h"
#import "AdvanceMediaPlayer.h"
#import "Mp4Player.h"
#import "VlcPlayer.h"

@interface MediaAdapter()
/**/
@property (nonatomic,strong) AdvanceMediaPlayer *advancedPlayer;

@end

@implementation MediaAdapter

+ (instancetype)mediaAdapter:(AudioType)type
{
    MediaAdapter *adapter = [[MediaAdapter alloc] init];
    if (type == AudioTypeMP4) {
       adapter.advancedPlayer = [Mp4Player new];
    } else if (type == AudioTypeVLC){
        adapter.advancedPlayer = [VlcPlayer new];
    }
    return adapter;
}

- (void)play:(AudioType)type fileName:(NSString *)fileName
{
    if (type == AudioTypeMP4) {
        [_advancedPlayer playMp4:fileName];
    } else if (type == AudioTypeVLC){
        [_advancedPlayer playVlc:fileName];
    }
}

@end
