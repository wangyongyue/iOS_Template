//
//  BaseController.m
//  kuai
//
//  Created by wangyongyue on 2020/7/8.
//  Copyright © 2020 sui. All rights reserved.
//

#import "BaseController.h"
#import "Server.h"

@implementation BaseController

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    [self.navigationController.navigationBar setHidden:NO];

}
@end
