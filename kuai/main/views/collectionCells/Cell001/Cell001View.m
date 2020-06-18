//
//  Cell001View.m
//  kuai
//
//  Created by apple on 2020/6/11.
//  Copyright © 2020 sui. All rights reserved.
//


#import "Cell001View.h"
#import "Header.h"
@interface Cell001View ()

@end

@implementation Cell001View
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.contentView addSubview:button];
        UIImage *img = [UIImage imageNamed:@"back.png"];
        [button setImage:img forState:UIControlStateNormal];
        [button addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        button.frame = CGRectMake(10, 25, img.size.width, img.size.height);
       
    }
    return self;
}
- (void)loadModel:(id)model{
    
}


@end

@implementation Cell001
- (NSString *)identifier{
    
    return NSStringFromClass([Cell001View class]);
}
- (NSValue *)size{
    CGSize size = CGSizeMake(ScreenWidth,Top);
    return [NSValue valueWithCGSize:size];
}
@end
