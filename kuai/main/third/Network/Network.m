//
//  Network.m
//  kuai
//
//  Created by apple on 2020/8/11.
//  Copyright © 2020 sui. All rights reserved.
//

#import "Network.h"

@implementation Network
+ (void)POST:(NSString *)url parameter:(NSDictionary *)parameter success:(void(^)(NSDictionary *dic))sucess failure:(void(^)(NSString *error))failure{
    
    AFHTTPSessionManager *manger = [AFHTTPSessionManager manager];
    manger.requestSerializer.timeoutInterval = 60;
    manger.securityPolicy.allowInvalidCertificates=YES;
    manger.securityPolicy.validatesDomainName=NO;
    manger.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript",@"text/html",@"application/octet-stream", nil];
    
    AFSecurityPolicy *securityPolicy =  [AFSecurityPolicy defaultPolicy];
    securityPolicy.allowInvalidCertificates = YES;
    securityPolicy.validatesDomainName = NO;
    manger.securityPolicy = securityPolicy;

    [manger POST:url parameters:parameter progress:^(NSProgress * _NonnulluploadProgress){
        
    }success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        if (sucess) {
            sucess(responseObject);
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (failure) {
            failure(@"网络加载失败");
        }
    }];
    
}
@end
