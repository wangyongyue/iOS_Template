//
//  Home.m
//  kuai
//
//  Created by apple on 2020/6/11.
//  Copyright © 2020 sui. All rights reserved.
//

#import "Home.h"
@interface Home()

@end
@implementation Home


- (void)loadTableData:(NSDictionary *)reponse{
           
    [self.array removeAllObjects];
    NSArray *array = (NSArray *)[[NSUserDefaults standardUserDefaults] objectForKey:VideoUrls];
    for (NSString *str in array) {
        
        Cell004 *m = [[Cell004 alloc]init];
        m.title1 = str;
        [self.array addObject:m];
    }
    
}
- (void)tableIndex:(NSInteger)index{
    
}


@end
