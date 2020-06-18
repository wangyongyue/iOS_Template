//
//  AppDelegate.m
//  kuai
//
//  Created by apple on 2020/6/9.
//  Copyright © 2020 sui. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "TabBarVC.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    TabBarVC *main = [[TabBarVC alloc]init];
    self.window.rootViewController = main;
    [self.window makeKeyAndVisible];
    
    
    
    
    return YES;
}


@end
