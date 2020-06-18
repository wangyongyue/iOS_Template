//
//  Cell002View.m
//  kuai
//
//  Created by apple on 2020/6/11.
//  Copyright © 2020 sui. All rights reserved.
//

#import "Cell002View.h"
#import "Header.h"
@interface Cell002View ()
@property(nonatomic,strong)UILabel *label;
@end

@implementation Cell002View
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.label = [[UILabel alloc]initWithFrame:CGRectMake(0, 25, ScreenWidth, 24)];
        [self.contentView addSubview:self.label];
        self.label.textAlignment = NSTextAlignmentCenter;
        self.label.textColor = [UIColor whiteColor];
        
    }
    return self;
}

- (void)loadModel:(id)model{
    Cell002 *m = (Cell002 *)model;
    self.label.text = m.title;
    
}

@end

@implementation Cell002
- (NSString *)identifier{
    
    return NSStringFromClass([Cell002View class]);
}
- (NSValue *)size{
    CGSize size = CGSizeMake(ScreenWidth, Top);
    return [NSValue valueWithCGSize:size];
}
@end
