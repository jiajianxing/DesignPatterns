//
//  CompositePattern
//
//  Created by 贾 on 2019/3/22.
//  Copyright © 2019年 GTYK. All rights reserved.
//

#import "CompositeController.h"
#import "Leaf.h"
#import "Composite.h"

@interface CompositeController ()

@end

@implementation CompositeController

- (void)viewDidLoad {
    [super viewDidLoad];
    Component *root = [Composite compositeWithName:@"服装"];
    Component *c1 = [Composite compositeWithName:@"男装"];
    Component *c2 = [Composite compositeWithName:@"女装"];
    
    Component  *leaf1 = [Leaf leafWithName:@"衬衣"];
    Component *leaf2 = [Leaf leafWithName:@"夹克"];
    Component *leaf3 = [Leaf leafWithName:@"裙子"];
    Component *leaf4 = [Leaf leafWithName:@"套装"];
    
    [root addChild:c1];
    [root addChild:c2];
    
    [c1 addChild:leaf1];
    [c1 addChild:leaf2];
    
    [c2 addChild:leaf3];
    [c2 addChild:leaf4];
    
    [root printStruct:@""];
    
}


@end
