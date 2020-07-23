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

@end
@implementation SearchController

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.server = [[Search alloc]init];
    }
    return self;
}
@end
