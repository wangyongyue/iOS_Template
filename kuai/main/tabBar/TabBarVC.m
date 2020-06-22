//
//  TabBarVC.m
//  kuai
//
//  Created by apple on 2020/6/11.
//  Copyright © 2020 sui. All rights reserved.
//

#import "TabBarVC.h"
#import "NavgationVC.h"
#import "Login.h"
#import "ViewController.h"
#import "TabBar.h"

@implementation TabBarVC
- (void)viewDidLoad{
    [super viewDidLoad];
    
   
   
    
//    [self.tabBar setBackgroundColor:[UIColor blackColor]];
    
    TabBar *bar = [[TabBar alloc]initWithFrame:self.tabBar.bounds];
    bar.backgroundColor = [UIColor blackColor];
//    [self.tabBar addSubview:bar];
    [self setValue:bar forKey:@"tabBar"];
    [self createContrllrs];
    
    
}
- (void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    
    self.tabBar.backgroundImage = [[UIImage alloc]init];

    for (int i = 0;i < self.tabBar.subviews.count; i ++) {
        UIView *view = self.tabBar.subviews[i];
        if ([NSStringFromClass([view class]) isEqualToString:@"UILabel"]) {
            
//            [self.tabBar bringSubviewToFront:view];

        }

    }
    
}




- (void)addController:(UIViewController *)controller withTitle:(NSString *)title imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName {
    [self addChildViewController:controller];
    
}
- (void)createContrllrs{
    
    Server *m1 = [Server factory:@"Home"];
    NavgationVC *home = [[NavgationVC alloc]initWithRootViewController:[m1 controller]];
    [self addController:home withTitle:@"首页" imageName:@"" selectedImageName:@""];
    
    Server *m2 = [Server factory:@"Search"];
    NavgationVC *search = [[NavgationVC alloc]initWithRootViewController:[m2 controller]];
    [self addController:search withTitle:@"搜索" imageName:@"" selectedImageName:@""];
    
    Server *m3 = [Server factory:@"Mine"];
    NavgationVC *mine = [[NavgationVC alloc]initWithRootViewController:[m3 controller]];
    [self addController:mine withTitle:@"我的" imageName:@"" selectedImageName:@""];
    
    
    
    
}



@end
