//
//  Network.h
//  kuai
//
//  Created by wangyongyue on 2020/6/20.
//  Copyright © 2020 sui. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Network : NSObject
- (NSString *)url;
- (NSMutableDictionary *)body;
@end

NS_ASSUME_NONNULL_END
