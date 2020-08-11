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
#import "Network.h"

NS_ASSUME_NONNULL_BEGIN

@interface Server : NSObject
@property(nonatomic,strong)NSMutableArray *array;
@property(nonatomic,copy)NSString *error;

@property(nonatomic,copy)ReloadBlock reload;
@property(nonatomic,strong)UINavigationController *navigationController;

- (NSString *)url;
- (NSMutableDictionary *)body;


- (void)loadTableData:(NSDictionary *)reponse;
- (void)tableIndex:(NSInteger)index;
- (void)loadError:(NSString *)error;


- (void)reloadData:(ReloadBlock)block;
- (void)networkRequest;



@end

NS_ASSUME_NONNULL_END
