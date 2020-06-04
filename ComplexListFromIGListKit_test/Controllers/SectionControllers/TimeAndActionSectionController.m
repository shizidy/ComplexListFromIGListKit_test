//
//  TimeAndActionSectionController.m
//  ComplexListFromIGListKit_test
//
//  Created by wdyzmx on 2020/6/3.
//  Copyright © 2020 wdyzmx. All rights reserved.
//

#import "TimeAndActionSectionController.h"
#import "TimeAndActionCellModel.h"
#import "TimeAndActionCell.h"

@interface TimeAndActionSectionController ()

@property (nonatomic, strong) TimeAndActionCellModel *cellModel;

@end

@implementation TimeAndActionSectionController

- (NSInteger)numberOfItems {
    return 1;
}

- (CGSize)sizeForItemAtIndex:(NSInteger)index {
    return CGSizeMake(kScreenWidth, 50);
}

- (__kindof UICollectionViewCell *)cellForItemAtIndex:(NSInteger)index {
    TimeAndActionCell *cell = [self.collectionContext dequeueReusableCellOfClass:[TimeAndActionCell class] forSectionController:self atIndex:index];
    [cell bindCellModel:self.cellModel index:index];
    return cell;
}

- (void)didSelectItemAtIndex:(NSInteger)index {
    NSLog(@"点击了TimeAndActionSectionController title index == %ld", index);
}

- (void)didUpdateToObject:(id)object {
    // 得到cellModel
    self.cellModel = object;
}

@end
