//
//  Header.h
//  kuai
//
//  Created by apple on 2020/6/11.
//  Copyright © 2020 sui. All rights reserved.
//

#ifndef Header_h
#define Header_h

#define ScreenWidth [UIScreen mainScreen].bounds.size.width
#define ScreenHeight [UIScreen mainScreen].bounds.size.height

#define Top (69)
#define VideoUrls @"VideoUrls"
#define VideoData @"VideoData"
#define VideoObserver @"VideoObserver"

#define GrayColor [UIColor colorWithRed:169/255.0 green:169/255.0 blue:169/255.0 alpha:1.0]

typedef void(^ReloadBlock)(void);
#import "Behavior.h"
#import "BeTap.h"
#import "BeSlide.h"
#import "UIView+gesture.h"
#import "FlowLayout.h"
#import "MainViewController.h"


#import "DefaultVC.h"
#import "TestCCell.h"
#import "Router.h"
#import "Cell001View.h"
#import "Cell002View.h"
#import "Cell003View.h"
#import "Cell004View.h"
#import "Cell005View.h"
#import "Cell006View.h"
#import "Cell007View.h"
#import "Cell008View.h"



#endif /* Header_h */
