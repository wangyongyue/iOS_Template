//
//  MainViewController.m
//  kuai
//
//  Created by apple on 2020/6/22.
//  Copyright © 2020 sui. All rights reserved.
//

#import "MainController.h"
#import "Collection.h"

@interface MainController ()

@end

@implementation MainController

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    [self.tabBarController.tabBar setHidden:NO];

}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self.tabBarController.tabBar setHidden:YES];

}


- (Server *)server{
    if (_server == nil) {
        _server = [[Server alloc]init];
    }
    return _server;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGRect rect = CGRectMake(0, Top , ScreenWidth, ScreenHeight - Top - Bottom);
    FlowLayout *flowLayout = [[FlowLayout alloc]initWithScrollDirection:UICollectionViewScrollDirectionVertical];
    Collection *table = [[Collection alloc]initWithFrame:rect collectionViewLayout:flowLayout];
    [self.view addSubview:table];
    [table tableIndex:^(NSInteger index) {
        NSLog(@"%ld",index);
        [self.server tableIndex:index];
    }];
    table.backgroundColor = [UIColor blackColor];
    table.array = self.server.array;
    [self.server reloadData:^{
        [table reloadData];
    }];
    
    [self.server loadTableData:nil];
    
}



@end
