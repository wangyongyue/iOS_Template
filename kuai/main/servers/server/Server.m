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
- (UIViewController *)controller{return [[UIViewController alloc]init];};
- (void)reloadData:(ReloadBlock)block{self.reload = block;}
- (void)reloadNavData:(ReloadBlock)block{self.navReload = block;}

- (NSArray *)loadNavigationData:(NSDictionary *)reponse{return [[NSArray alloc]init];}
- (void)navgationIndex:(NSInteger)index{}

- (NSArray *)loadTableData:(NSDictionary *)reponse{return [[NSArray alloc]init];}
- (void)tableIndex:(NSInteger)index{}

- (UICollectionViewScrollDirection)scrollDirection{return UICollectionViewScrollDirectionVertical;}


+ (Server *)factory:(NSString *)name{return [[NSClassFromString(name) alloc]init];}

@end
