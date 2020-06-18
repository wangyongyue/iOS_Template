//
//  Cell003View.h
//  kuai
//
//  Created by apple on 2020/6/11.
//  Copyright © 2020 sui. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN


@interface Cell003View : UICollectionViewCell

@end
@interface Cell003 : NSObject
@property(nonatomic,copy)NSString *title1;
@property(nonatomic,copy)NSString *title2;
@property(nonatomic,copy)NSString *title3;
@property(nonatomic,assign)NSInteger index;

@end

NS_ASSUME_NONNULL_END
