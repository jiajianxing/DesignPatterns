//
//  AdapterPattern
//
//  Created by 贾 on 2019/3/19.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import "AdapterController.h"
#import "AudioPlayer.h"

@interface AdapterController ()

@end

@implementation AdapterController

- (void)viewDidLoad {
    [super viewDidLoad];
    AudioPlayer *player = [[AudioPlayer alloc] init];
    [player play:AudioTypeVLC fileName:@"123.vlc"];
    [player play:AudioTypeMP4 fileName:@"你好.MP4"];
    [player play:AudioTypeMP3 fileName:@"far.mp3"];

}


@end
