//
//  TabBar.m
//  kuai
//
//  Created by apple on 2020/6/11.
//  Copyright © 2020 sui. All rights reserved.
//

#import "TabBar.h"
#import "Header.h"
@interface TabBar ()
@property(nonatomic,strong)NSMutableArray *array;
@property(nonatomic,assign)NSInteger number;

@end
@implementation TabBar


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        NSArray *strs = @[@"首页",@"搜索",@"我的"];
        for (int i = 0;i < 3; i ++) {
            CGRect frame = CGRectMake( self.frame.size.width/3*i, 0, self.frame.size.width/3, self.frame.size.height);
            UILabel *label = [[UILabel alloc]init];
            label.text = strs[i];
            label.textColor = GrayColor;
            label.frame = frame;
            label.textAlignment = NSTextAlignmentCenter;
            [self addSubview:label];
            [self.array addObject:label];
            if (i == 0) {
                
                label.textColor = [UIColor whiteColor];
            }
        }
        
        
    }
    return self;
}
- (NSMutableArray *)array{
    if (_array == nil) {
        _array = [NSMutableArray array];
    }
    return _array;
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    
    for (int i = 0; i < self.array.count; i ++) {
        UILabel *label = self.array[i];
        label.textColor = GrayColor;
        
        if (CGRectContainsPoint(label.frame, point)) {
            self.number = i;
        }
        if (i == self.number) {
            label.textColor = [UIColor whiteColor];
        }
        if (self.number == 0) {
            self.backgroundColor = [UIColor clearColor];
        }else{
            self.backgroundColor = [UIColor blackColor];
        }
        
    }
    return [super hitTest:point withEvent:event];
}
@end
