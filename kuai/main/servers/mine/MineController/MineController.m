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

@end
@implementation MineController

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.server = [[Mine alloc]init];
    }
    return self;
}
@end
