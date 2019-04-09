//
//  ChainResPattern
//
//  Created by 贾 on 2019/4/9.
//  Copyright © 2019 GTYK. All rights reserved.
//

#import "ChainController.h"
#import "Handler/Manager.h"
#import "Handler/DepartmentManager.h"
#import "Handler/DepartmentDirector.h"
#import "Handler/GeneralManager.h"

@interface ChainController ()

@end

@implementation ChainController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Manager *dm = [[DepartmentManager alloc] init];
    Manager *dd = [[DepartmentDirector alloc] init];
    Manager *gm = [[GeneralManager alloc] init];
    
    dm.nextManager = dd;
    dd.nextManager = gm;
    
    [dm handleRequest:@"张三" salary:300];
    [dm handleRequest:@"刘伟" salary:800];
    [dm handleRequest:@"李四" salary:2000];
    [dm handleRequest:@"王五" salary:5000];
}


@end
