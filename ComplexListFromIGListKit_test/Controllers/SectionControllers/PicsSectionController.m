//
//  PicsSectionController.m
//  ComplexListFromIGListKit_test
//
//  Created by wdyzmx on 2020/6/3.
//  Copyright © 2020 wdyzmx. All rights reserved.
//

#import "PicsSectionController.h"
#import "PicsCellModel.h"
#import "PicsCell.h"

@interface PicsSectionController ()

@property (nonatomic, strong) PicsCellModel *cellModel;

@end

@implementation PicsSectionController

- (NSInteger)numberOfItems {
    return 1;
}

- (CGSize)sizeForItemAtIndex:(NSInteger)index {
    NSInteger count = self.cellModel.picsArray.count;
    if (count == 0) {
        return CGSizeZero;
    } else {
        NSInteger row = count / 3;
        CGFloat space = 10;
        CGFloat headPicWidth = 50;
        CGFloat picWidth = (kScreenWidth - space * 5 - headPicWidth) / 3;
        return CGSizeMake(kScreenWidth, (row + 1) * picWidth + row * space);
    }
}

- (__kindof UICollectionViewCell *)cellForItemAtIndex:(NSInteger)index {
    PicsCell *cell = [self.collectionContext dequeueReusableCellOfClass:[PicsCell class] forSectionController:self atIndex:index];
    [cell bindCellModel:self.cellModel index:index];
    return cell;
}

- (void)didSelectItemAtIndex:(NSInteger)index {
    NSLog(@"点击了PicsSectionController title index == %ld", index);
}

- (void)didUpdateToObject:(id)object {
    // 得到cellModel
    self.cellModel = object;
}

@end
