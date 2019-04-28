//
//  MementoCenterProtocol.h
//  DesignPatterns
//
//  Created by 贾 on 2019/4/28.
//  Copyright © 2019 GTYK. All rights reserved.
//
@protocol  MementoCenterProtocol <NSObject>

/**
 获取状态
 */
- (id)getStatus;

/**
 恢复状态
 */
- (void)recoverFromStatus:(id)status;

@end
