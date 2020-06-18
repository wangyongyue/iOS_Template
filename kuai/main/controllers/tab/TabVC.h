//
//  TabVC.h
//  kuai
//
//  Created by apple on 2020/6/12.
//  Copyright © 2020 sui. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "Header.h"
#import "Server.h"
@class Server;

NS_ASSUME_NONNULL_BEGIN

@interface TabVC : UIViewController
@property(nonatomic,strong)Server *server;

@end

NS_ASSUME_NONNULL_END
