//
//  ConcreteMediator.h
//  MediatorPattern
//
//  Created by 贾 on 2019/4/26.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "Mediator.h"
#import "ConcreteColleague1.h"
#import "ConcreteColleague2.h"

NS_ASSUME_NONNULL_BEGIN
//具体中介者对象
@interface ConcreteMediator : Mediator
/**/
@property (nonatomic,strong) ConcreteColleague1 *colleague1;
/**/
@property (nonatomic,strong) ConcreteColleague2 *colleague2;

@end

NS_ASSUME_NONNULL_END
