//
//  Search.m
//  kuai
//
//  Created by apple on 2020/6/11.
//  Copyright © 2020 sui. All rights reserved.
//

#import "Search.h"

@implementation Search


- (void)loadTableData:(NSDictionary *)reponse{
    
    for (int i = 0; i < 100; i ++) {
        
        if (i == 5 || i == 10) {
            Cell005 *t = [[Cell005 alloc]init];
            [self.array addObject:t];
        }else{
            TestC *t = [[TestC alloc]init];
            t.title1 = [NSString stringWithFormat:@"%d",i + 1];
            [self.array addObject:t];
        }
        
    }
    
    self.reload();
}
- (void)tableIndex:(NSInteger)index{
    
    
}

@end
