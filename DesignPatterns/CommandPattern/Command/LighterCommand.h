//
//  LighterCommand.h
//  DesignPatterns
//
//  Created by 贾 on 2019/4/16.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandInterface.h"
#import "Receiver.h"
NS_ASSUME_NONNULL_BEGIN

@interface LighterCommand : NSObject<CommandInterface>

- (id)initWithReceiver:(Receiver*)receiver parameter:(CGFloat)parameter;

@end

NS_ASSUME_NONNULL_END
