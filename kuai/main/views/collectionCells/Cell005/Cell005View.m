//
//  Cell005View.m
//  kuai
//
//  Created by apple on 2020/6/11.
//  Copyright © 2020 sui. All rights reserved.
//

#import "Cell005View.h"
#import "Header.h"
@interface Cell005View ()

@end

@implementation Cell005View
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        UILabel *lable = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, ScreenWidth, 20)];
        [self.contentView addSubview:lable];
        lable.backgroundColor = [UIColor whiteColor];
        lable.text = @"sdfsfsfdsdfsfds s sdf sdf sfd ddsdfs sd s";
        
       
    }
    return self;
}

- (void)loadModel:(id)model{
    
    
}

@end

@implementation Cell005
- (NSString *)identifier{
    
    return NSStringFromClass([Cell005View class]);
}
- (NSValue *)size{
    CGSize size = CGSizeMake(ScreenWidth,20);
    return [NSValue valueWithCGSize:size];
}
@end

