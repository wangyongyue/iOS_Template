//
//  SearchController.m
//  kuai
//
//  Created by wangyongyue on 2020/7/8.
//  Copyright © 2020 sui. All rights reserved.
//

#import "SearchController.h"
#import "Search.h"

@interface SearchController ()
@property(nonatomic,strong)Server *server;

@end
@implementation SearchController

- (Server *)server{
    if (_server == nil) {
        _server = [[Search alloc]init];
    }
    return _server;
}
@end
