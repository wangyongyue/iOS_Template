//
//  MainViewController.h
//  kuai
//
//  Created by apple on 2020/6/22.
//  Copyright © 2020 sui. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "BaseController.h"
#import "Server.h"


NS_ASSUME_NONNULL_BEGIN

@interface MainController : BaseController
@property(nonatomic,strong)Server *server;

@end

NS_ASSUME_NONNULL_END
