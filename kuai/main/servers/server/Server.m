//
//  Server.m
//  kuai
//
//  Created by apple on 2020/6/11.
//  Copyright © 2020 sui. All rights reserved.
//

#import "Server.h"
#import "Header.h"
@implementation Server
- (UIViewController *)controller{return [[UIViewController alloc]init];}
- (NSString *)url{return @"";}
- (NSMutableDictionary *)body{return [NSMutableDictionary dictionary];}

- (void)reloadData:(ReloadBlock)block{self.reload = block;}
- (void)loadTableData:(NSDictionary *)reponse{}
- (void)tableIndex:(NSInteger)index{}
- (void)networkRequest{
    if (self.url.length == 0) {
        [self loadTableData:nil];
        self.reload();
        return;
    }
}
- (NSMutableArray *)array{
    if (_array == nil) {
        _array = [NSMutableArray array];
    }
    return _array;
}


@end
