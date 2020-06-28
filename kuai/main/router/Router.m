//
//  Router.m
//  kuai
//
//  Created by apple on 2020/6/11.
//  Copyright © 2020 sui. All rights reserved.
//

#import "Router.h"
@interface Router ()
@property(nonatomic,strong)NSMutableArray *servers;

@end
@implementation Router
+ (instancetype)shared{
    static Router *_router = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _router = [[super allocWithZone:NULL] init];
    });
    return _router;
}
- (NSMutableArray *)servers{
    if (_servers == nil) {
        _servers = [NSMutableArray array];
    }
    return _servers;
}
- (Server *)server{
    if (self.servers.count > 0) {
        return self.servers.lastObject;
    }
    return [[Server alloc]init];
}
- (void)push:(NSString *)server{
    Server *se = (Server *) [[NSClassFromString(server) alloc]init];
    [self.servers addObject:se];
    UINavigationController *na =  [Router currentNC];
    [na pushViewController:[se controller] animated:YES];
        
}
- (void)push:(NSString *)server params:(id)params{
    
    Server *se = (Server *) [[NSClassFromString(server) alloc]init];
    [self.servers addObject:se];
    se.obj = params;
    UINavigationController *na =  [Router currentNC];
    [na pushViewController:[se controller] animated:YES];
}
- (void)pop{
    if (self.servers.count > 0) {
        [self.servers removeLastObject];
    }
    UINavigationController *na =  [Router currentNC];
    [na popViewControllerAnimated:YES];
    
}
+ (UIViewController *)currenViewController{
    
   UINavigationController *na =  [Router currentNC];
   return na.viewControllers.lastObject;
    
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
