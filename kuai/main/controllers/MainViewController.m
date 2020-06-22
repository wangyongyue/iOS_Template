//
//  MainViewController.m
//  kuai
//
//  Created by apple on 2020/6/22.
//  Copyright © 2020 sui. All rights reserved.
//

#import "MainViewController.h"
#import "DefaultVC.h"
#import "Table.h"
#import "TestCell.h"
#import "Collection.h"
#import "TestCCell.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    [self.tabBarController.tabBar setHidden:YES];

    if ([NSStringFromClass([self.server class]) isEqualToString:@"Home"]
        || [NSStringFromClass([self.server class]) isEqualToString:@"Search"]
        || [NSStringFromClass([self.server class]) isEqualToString:@"Mine"]) {
            [self.tabBarController.tabBar setHidden:NO];

    }
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self.tabBarController.tabBar setHidden:NO];

    if ([NSStringFromClass([self.server class]) isEqualToString:@"Home"]
        || [NSStringFromClass([self.server class]) isEqualToString:@"Search"]
        || [NSStringFromClass([self.server class]) isEqualToString:@"Mine"]) {
            [self.tabBarController.tabBar setHidden:YES];

    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    Table *table = [[Table alloc]initWithFrame:self.view.bounds];
//    [self.view addSubview:table];
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
    layout.itemSize = CGSizeMake(ScreenWidth, Top);
    layout.minimumLineSpacing = 0;
    layout.minimumInteritemSpacing = 0;
    layout.scrollDirection = UICollectionViewScrollDirectionVertical;
    
    CGRect rectTop = CGRectMake(0, -20, ScreenWidth,Top);
    Collection *topTable = [[Collection alloc]initWithFrame:rectTop collectionViewLayout:layout];
    [self.view addSubview:topTable];
    [topTable tableIndex:^(NSInteger index) {
        NSLog(@"%d",index);
        [self.server navgationIndex:index];
    }];
    topTable.array = [self.server loadNavigationData:nil];
    [topTable reloadData];

    CGRect rect = CGRectMake(0, Top - 20, ScreenWidth, ScreenHeight - Top + 20);
    FlowLayout *flowLayout = [[FlowLayout alloc]initWithScrollDirection:[self.server scrollDirection]];
    Collection *table = [[Collection alloc]initWithFrame:rect collectionViewLayout:flowLayout];
    [self.view addSubview:table];
    [table tableIndex:^(NSInteger index) {
        NSLog(@"%d",index);
        [self.server tableIndex:index];
    }];
    table.array = [self.server loadTableData:nil];;
    [table reloadData];
    
    
    topTable.backgroundColor = [UIColor blackColor];
    table.backgroundColor = [UIColor blackColor];
    
    [self.server reloadData:^{
        
        table.array = [self.server loadTableData:nil];;
        [table reloadData];
        
    }];
    
}



@end
