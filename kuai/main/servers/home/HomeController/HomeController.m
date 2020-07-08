//
//  HomeController.m
//  kuai
//
//  Created by wangyongyue on 2020/7/8.
//  Copyright © 2020 sui. All rights reserved.
//

#import "HomeController.h"
#import "CameraVC.h"
#import "Router.h"
#import "Home.h"
@interface HomeController ()
@property(nonatomic,strong)Server *server;

@end
@implementation HomeController

- (Server *)server{
    if (_server == nil) {
        _server = [[Home alloc]init];
    }
    return _server;
}

- (void)viewDidLoad{
    [super viewDidLoad];
    
    UIButton *right = [UIButton buttonWithType:UIButtonTypeSystem];
    [right setTitle:@"camera" forState:UIControlStateNormal];
    [right setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [right addTarget:self action:@selector(onClick) forControlEvents:UIControlEventTouchUpInside];
    right.frame = CGRectMake(0, 0, 40, 40);
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithCustomView:right];
    self.navigationItem.rightBarButtonItem  = item;

    self.navigationItem.title = @"sdf";
        
}
- (void)onClick{
    
    CameraVC *vc = [[CameraVC alloc]init];
    [Router push:vc];
    
}

@end
