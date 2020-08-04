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
#import "Collection.h"


NS_ASSUME_NONNULL_BEGIN

@interface MainController : BaseController
@property(nonatomic,strong)Server *server;
@property(nonatomic,strong)Collection *table;

@end

NS_ASSUME_NONNULL_END
