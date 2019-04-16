//
//  CommandInterface.h
//  DesignPatterns
//
//  Created by 贾 on 2019/4/12.
//  Copyright © 2019 GTYK. All rights reserved.
//

@protocol  CommandInterface <NSObject>

- (void)execute;

- (void)rollBack;

@end
