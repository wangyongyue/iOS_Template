//
//  Search.m
//  kuai
//
//  Created by apple on 2020/6/11.
//  Copyright © 2020 sui. All rights reserved.
//

#import "Search.h"

@implementation Search
- (UIViewController *)controller{
    
    DefaultVC *vc = [[DefaultVC alloc]init];
    vc.server = self;
    return vc;
}
- (NSArray *)loadNavigationData:(NSDictionary *)reponse{
    NSMutableArray *arry = [NSMutableArray array];
    Cell002 *m = [[Cell002 alloc]init];
    m.title = @"搜索";
    [arry addObject:m];
    return arry;
    
}
- (void)navgationIndex:(NSInteger)index{
    
}
- (NSArray *)loadTableData:(NSDictionary *)reponse{
    
    NSMutableArray *arry = [NSMutableArray array];
    for (int i = 0; i < 100; i ++) {
        
        if (i == 5 || i == 10) {
            Cell005 *t = [[Cell005 alloc]init];
            [arry addObject:t];
        }else{
            TestC *t = [[TestC alloc]init];
            t.title1 = [NSString stringWithFormat:@"%d",i + 1];
            [arry addObject:t];
        }
    }
    return arry;
    
}
- (void)tableIndex:(NSInteger)index{
    
}

@end
