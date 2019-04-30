//
//  TemplatePattern
//
//  Created by 贾 on 2019/4/30.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "TemplateController.h"
#import "Class/GTPagerA.h"
#import "Class/GTPagerB.h"

@interface TemplateController ()

@end

@implementation TemplateController

- (void)viewDidLoad {
    [super viewDidLoad];
    GTPaper *pageA = [GTPagerA new];
    [pageA subject1];
    [pageA subject2];
    
    GTPaper *pageB = [GTPagerB new];
    [pageB subject1];
    [pageB subject2];
}


@end
