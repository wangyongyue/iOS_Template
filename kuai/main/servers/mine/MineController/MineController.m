//
//  MineController.m
//  kuai
//
//  Created by wangyongyue on 2020/7/8.
//  Copyright © 2020 sui. All rights reserved.
//

#import "MineController.h"
#import "Mine.h"


@interface MineController ()
@property(nonatomic,strong)Server *server;

@end
@implementation MineController

- (Server *)server{
    if (_server == nil) {
        _server = [[Mine alloc]init];
    }
    return _server;
}
@end
