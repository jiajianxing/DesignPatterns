//
//  AudioPlayer.m
//  AdapterPattern
//
//  Created by 贾 on 2019/3/19.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import "AudioPlayer.h"
#import "MediaAdapter.h"
@interface AudioPlayer()
{
    MediaAdapter *adapter;
}

@end
@implementation AudioPlayer

- (void)play:(AudioType)type fileName:(NSString *)fileName
{
    if (type == AudioTypeMP3) {
        NSLog(@"playing mp3 file , name:%@", fileName);
    } else if (type == AudioTypeMP4 || type == AudioTypeVLC){
        adapter = [MediaAdapter  mediaAdapter:type];
        [adapter play:type fileName:fileName];
    }
}
@end
