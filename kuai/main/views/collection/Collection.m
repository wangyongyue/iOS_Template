//
//  Collection.m
//  kuai
//
//  Created by apple on 2020/6/11.
//  Copyright © 2020 sui. All rights reserved.
//

#import "Collection.h"
@interface Collection ()
@property(nonatomic,copy)void(^block)(NSInteger index);

@end
@implementation Collection
- (instancetype)initWithFrame:(CGRect)frame collectionViewLayout:(UICollectionViewLayout *)layout{
    
    self = [super initWithFrame:frame collectionViewLayout:layout];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        self.dataSource = self;
        self.delegate = self;
        
    }
    return self;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    
    return 1;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.array.count;
    
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    id model = self.array[indexPath.row];
    NSString *identifier = [model performSelector:@selector(identifier)];
    [self registerClass:NSClassFromString(identifier) forCellWithReuseIdentifier:identifier];
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    [cell performSelector:@selector(loadModel:) withObject:model];
    return cell;
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    id model = self.array[indexPath.row];
    id obj = [model performSelector:@selector(size)];
    return [obj CGSizeValue];
}
- (void)tableIndex:(void(^)(NSInteger index))block{
    
    self.block = block;
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
    self.block(indexPath.row);

}







@end
