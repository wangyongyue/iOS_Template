//
//  Home.m
//  kuai
//
//  Created by apple on 2020/6/11.
//  Copyright © 2020 sui. All rights reserved.
//

#import "Home.h"
#import "CameraVC.h"
@interface Home()
@property(nonatomic,strong)NSMutableArray *navArray;
@property(nonatomic,strong)NSMutableArray *array;

@end
@implementation Home
- (void)dealloc{
    
    [[NSNotificationCenter defaultCenter] removeObserver:VideoObserver];
    
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(releadVideo) name:VideoObserver object:nil];

    }
    return self;
}
- (void)releadVideo{
    
    self.reload();
}
- (NSMutableArray *)navArray{
    if (_navArray == nil) {
        _navArray = [NSMutableArray array];
    }
    return _navArray;
}
- (NSMutableArray *)array{
    if (_array == nil) {
        _array = [NSMutableArray array];
    }
    return _array;
}
- (UIViewController *)controller{
    
    TabVC *vc = [[TabVC alloc]init];
    vc.server = self;
    return vc;
}
- (NSArray *)loadNavigationData:(NSDictionary *)reponse{
    Cell003 *m = [[Cell003 alloc]init];
    m.title1 = @"关注";
    m.title2 = @"推荐";
    m.title3 = @"拍摄";

    [self.navArray addObject:m];
    return self.navArray;
    
}
- (void)navgationIndex:(NSInteger)index{
    
    Cell003 *m = self.navArray.firstObject;
    if (m.index == 3) {
        
        CameraVC *vc = [[CameraVC alloc]init];
        [Router pushViewController:vc];
    }else{
        
        [[NSUserDefaults standardUserDefaults] setObject:nil forKey:VideoUrls];
        self.reload();
    }
    
}

- (NSArray *)loadTableData:(NSDictionary *)reponse{
           
    [self.array removeAllObjects];
    NSArray *array = (NSArray *)[[NSUserDefaults standardUserDefaults] objectForKey:VideoUrls];
    for (NSString *str in array) {
        
        Cell004 *m = [[Cell004 alloc]init];
        m.title1 = str;
        [self.array addObject:m];

    }
       
    return self.array;
    
}
- (void)tableIndex:(NSInteger)index{
    
}


@end
