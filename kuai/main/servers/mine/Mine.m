//
//  Mine.m
//  kuai
//
//  Created by apple on 2020/6/11.
//  Copyright © 2020 sui. All rights reserved.
//

#import "Mine.h"

@implementation Mine
- (UIViewController *)controller{
    
    DefaultVC *vc = [[DefaultVC alloc]init];
    vc.server = self;
    return vc;
}
- (NSArray *)loadNavigationData:(NSDictionary *)reponse{
    NSMutableArray *arry = [NSMutableArray array];
    Cell002 *m = [[Cell002 alloc]init];
    m.title = @"我的";
    [arry addObject:m];
    return arry;
    
}
- (void)navgationIndex:(NSInteger)index{
    
}

- (NSArray *)loadTableData:(NSDictionary *)reponse{
    
    NSMutableArray *arry = [NSMutableArray array];
       
    return arry;
    
}
- (void)tableIndex:(NSInteger)index{
    
}

- (NSString *)url{
    
    return @"";
    
}
- (NSMutableDictionary *)body{
    
    return [NSMutableDictionary dictionary];
    
}
@end
