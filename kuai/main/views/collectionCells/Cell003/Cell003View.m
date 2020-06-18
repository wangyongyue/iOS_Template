//
//  Cell003View.m
//  kuai
//
//  Created by apple on 2020/6/11.
//  Copyright © 2020 sui. All rights reserved.
//

#import "Cell003View.h"
#import "Header.h"
@interface Cell003View ()

@property(nonatomic,strong)UILabel *label1;
@property(nonatomic,strong)UILabel *label2;
@property(nonatomic,strong)UILabel *label3;

@property(nonatomic,strong)Cell003 *m;

@end

@implementation Cell003View
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.label1 = [[UILabel alloc]init];
        self.label1.textColor = [UIColor whiteColor];
        self.label1.textAlignment = NSTextAlignmentRight;
//        self.label1.backgroundColor = [UIColor clearColor];
        [self.contentView addSubview:self.label1];
        
        self.label2 = [[UILabel alloc]init];
        self.label2.textColor = [UIColor whiteColor];
        self.label2.textAlignment = NSTextAlignmentLeft;
        [self.contentView addSubview:self.label2];
        
        
        self.label3 = [[UILabel alloc]init];
        self.label3.textColor = [UIColor whiteColor];
        self.label3.textAlignment = NSTextAlignmentRight;
        [self.contentView addSubview:self.label3];
        
        
        self.label1.frame = CGRectMake(ScreenWidth/2 - 100, 25, 90, 24);
        self.label2.frame = CGRectMake(ScreenWidth/2, 25, 90, 24);
        self.label3.frame = CGRectMake(ScreenWidth - 100, 25, 90, 24);
        
        
    }
    return self;
}

- (void)loadModel:(id)model{
    
    Cell003 *m = (Cell003 *)model;
    self.label1.text = m.title1;
    self.label2.text = m.title2;
    self.label3.text = m.title3;
    self.m = m;
}
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    
    if (CGRectContainsPoint(self.label1.frame, point)) {
        self.m.index = 1;
    }
    if (CGRectContainsPoint(self.label2.frame, point)) {
        self.m.index = 2;
    }
    if (CGRectContainsPoint(self.label3.frame, point)) {
        self.m.index = 3;
    }
    
    return [super hitTest:point withEvent:event];
}

@end

@implementation Cell003
- (NSString *)identifier{
    
    return NSStringFromClass([Cell003View class]);
}
- (NSValue *)size{
    CGSize size = CGSizeMake(ScreenWidth, Top);
    return [NSValue valueWithCGSize:size];
}
@end
