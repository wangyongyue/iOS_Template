//
//  Server.h
//  kuai
//
//  Created by apple on 2020/6/11.
//  Copyright © 2020 sui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Header.h"
NS_ASSUME_NONNULL_BEGIN

@interface Server : NSObject
@property(nonatomic,strong)id obj;
@property(nonatomic,copy)ReloadBlock reload;
@property(nonatomic,copy)ReloadBlock navReload;

- (UIViewController *)controller;
- (UICollectionViewScrollDirection)scrollDirection;

- (NSArray *)loadNavigationData:(NSDictionary *)reponse;
- (void)navgationIndex:(NSInteger)index;

- (NSArray *)loadTableData:(NSDictionary *)reponse;
- (void)tableIndex:(NSInteger)index;


+ (Server *)factory:(NSString *)name;
- (void)reloadData:(ReloadBlock)block;
- (void)reloadNavData:(ReloadBlock)block;


@end

NS_ASSUME_NONNULL_END
