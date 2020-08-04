//
//  MainViewController.m
//  kuai
//
//  Created by apple on 2020/6/22.
//  Copyright © 2020 sui. All rights reserved.
//

#import "MainController.h"

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
- (Collection *)table{
    if (_table == nil) {
        CGRect rect = CGRectMake(0, Top - 20, ScreenWidth, ScreenHeight - Top + 20);
        FlowLayout *flowLayout = [[FlowLayout alloc]initWithScrollDirection:UICollectionViewScrollDirectionVertical];
        _table = [[Collection alloc]initWithFrame:rect collectionViewLayout:flowLayout];
        [self.view addSubview:_table];
        [_table tableIndex:^(NSInteger index) {
            NSLog(@"%ld",index);
            [self.server tableIndex:index];
        }];
        _table.backgroundColor = [UIColor blackColor];
    }
    return _table;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    __weak typeof(self) weakSelf = self;
    [self.server reloadData:^{
        [weakSelf reloadData];
    }];
    [self.server networkRequest];
    
}
- (void)reloadData{
    self.table.array = self.server.array;
    [self.table reloadData];
}



@end
