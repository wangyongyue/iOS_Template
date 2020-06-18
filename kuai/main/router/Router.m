//
//  Router.m
//  kuai
//
//  Created by apple on 2020/6/11.
//  Copyright © 2020 sui. All rights reserved.
//

#import "Router.h"
@implementation Router
+ (UIViewController *)currenViewController{
    
   UINavigationController *na =  [Router currentNC];
    return na.viewControllers.lastObject;
    
}
+ (void)pushViewController:(UIViewController *)controller{
    
    [[Router currentNC] pushViewController:controller animated:YES];
    
}
+ (void)push:(Server *)server{
    
    UIViewController *vc = [server controller];
    [Router pushViewController:vc];
}
+ (void)pop{
    
    [[Router currentNC] popViewControllerAnimated:YES];

}

+ (void)popNoAnimated{
    
    [[Router currentNC] popViewControllerAnimated:NO];

}
+ (void)naviagtionWithRightItems:(NSArray *)array{

    NSMutableArray *items = [[NSMutableArray alloc]init];
    for (UIButton *item in array) {
        
        UIBarButtonItem *a = [[UIBarButtonItem alloc]initWithCustomView:item];
        [items addObject:a];
    }
    UIViewController *vc = [Router currentNC].viewControllers.lastObject;
    vc.navigationItem.rightBarButtonItems = items;

}
+ (void)naviagtionWithBackItem:(UIButton *)button{
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithCustomView:button];
    UIViewController *vc = [Router currentNC].viewControllers.lastObject;
    vc.navigationItem.leftBarButtonItem = item;
    
}



+ (UINavigationController *)currentNC
{
    if (![[UIApplication sharedApplication].windows.lastObject isKindOfClass:[UIWindow class]]) {
        NSAssert(0, @"未获取到导航控制器");
        return nil;
    }
    UIViewController *rootViewController = [UIApplication sharedApplication].keyWindow.rootViewController;
    return [self getCurrentNCFrom:rootViewController];
}


//递归
+ (UINavigationController *)getCurrentNCFrom:(UIViewController *)vc
{
    if ([vc isKindOfClass:[UITabBarController class]]) {
        UINavigationController *nc = ((UITabBarController *)vc).selectedViewController;
        return [self getCurrentNCFrom:nc];
    }
    else if ([vc isKindOfClass:[UINavigationController class]]) {
        if (((UINavigationController *)vc).presentedViewController) {
            return [self getCurrentNCFrom:((UINavigationController *)vc).presentedViewController];
        }
        return [self getCurrentNCFrom:((UINavigationController *)vc).topViewController];
    }
    else if ([vc isKindOfClass:[UIViewController class]]) {
        if (vc.presentedViewController) {
            return [self getCurrentNCFrom:vc.presentedViewController];
        }
        else {
            return vc.navigationController;
        }
    }
    else {
        NSAssert(0, @"未获取到导航控制器");
        return nil;
    }
}
@end
