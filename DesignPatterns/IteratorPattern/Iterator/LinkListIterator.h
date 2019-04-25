//
//  LinkListIterator.h
//  IteratorPattern
//
//  Created by 贾 on 2019/4/25.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IteratorProtocol.h"
#import "LinkList.h"

NS_ASSUME_NONNULL_BEGIN

@interface LinkListIterator : NSObject<IteratorProtocol>

+ (instancetype)linkListIteratorWithLinkList:(LinkList *)linkList;

@end

NS_ASSUME_NONNULL_END
