//
//  TitleSectionController.m
//  ComplexListFromIGListKit_test
//
//  Created by wdyzmx on 2020/6/3.
//  Copyright © 2020 wdyzmx. All rights reserved.
//

#import "TitleSectionController.h"
#import "TitleCellModel.h"
#import "TitleCell.h"

@interface TitleSectionController ()

@property (nonatomic, strong) TitleCellModel *cellModel;

@end

@implementation TitleSectionController

- (NSInteger)numberOfItems {
    return 1;
}

- (CGSize)sizeForItemAtIndex:(NSInteger)index {
    return CGSizeMake(kScreenWidth, 60);
}

- (__kindof UICollectionViewCell *)cellForItemAtIndex:(NSInteger)index {
    TitleCell *cell = [self.collectionContext dequeueReusableCellOfClass:[TitleCell class] forSectionController:self atIndex:index];
    [cell bindCellModel:self.cellModel index:index];
    return cell;
}

- (void)didSelectItemAtIndex:(NSInteger)index {
    NSLog(@"点击了TitleSectionController title index == %ld", index);
}

- (void)didUpdateToObject:(id)object {
    // 得到cellModel
    self.cellModel = object;
}

@end
