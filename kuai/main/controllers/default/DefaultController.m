//
//  DefaultVC.m
//  kuai
//
//  Created by apple on 2020/6/10.
//  Copyright © 2020 sui. All rights reserved.
//

#import "DefaultController.h"
#import "Table.h"
#import "Collection.h"
#import "Server.h"

@interface DefaultController ()
@property(nonatomic,strong)Server *server;

@end

@implementation DefaultController

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [self.tabBarController.tabBar setHidden:YES];

}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self.tabBarController.tabBar setHidden:NO];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGRect rect = CGRectMake(0, Top - 20, ScreenWidth, ScreenHeight - Top + 20);
    FlowLayout *flowLayout = [[FlowLayout alloc]initWithScrollDirection:UICollectionViewScrollDirectionVertical];
    Collection *table = [[Collection alloc]initWithFrame:rect collectionViewLayout:flowLayout];
    [self.view addSubview:table];
    [table tableIndex:^(NSInteger index) {
        NSLog(@"%d",index);
        [self.server tableIndex:index];
    }];
    table.backgroundColor = [UIColor blackColor];
    table.array = self.server.array;
    
    [self.server reloadData:^{
        [table reloadData];
    }];
    
    
}



@end
