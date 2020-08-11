//
//  Network.h
//  kuai
//
//  Created by apple on 2020/8/11.
//  Copyright © 2020 sui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking.h>
NS_ASSUME_NONNULL_BEGIN

@interface Network : NSObject
+ (void)POST:(NSString *)url parameter:(NSDictionary *)parameter success:(void(^)(NSDictionary *dic))sucess failure:(void(^)(NSString *error))failure;

@end

NS_ASSUME_NONNULL_END
