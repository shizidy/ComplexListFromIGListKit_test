//
//  CommentsSectionController.m
//  ComplexListFromIGListKit_test
//
//  Created by wdyzmx on 2020/6/3.
//  Copyright © 2020 wdyzmx. All rights reserved.
//

#import "CommentsSectionController.h"
#import "CommentsCellModel.h"
#import "CommentsCell.h"

@interface CommentsSectionController ()

@property (nonatomic, strong) CommentsCellModel *cellModel;

@end

@implementation CommentsSectionController

- (NSInteger)numberOfItems {
    return self.cellModel.commentsArray.count;
}

- (CGSize)sizeForItemAtIndex:(NSInteger)index {
    return CGSizeMake(kScreenWidth, 40);
}

- (__kindof UICollectionViewCell *)cellForItemAtIndex:(NSInteger)index {
    CommentsCell *cell = [self.collectionContext dequeueReusableCellOfClass:[CommentsCell class] forSectionController:self atIndex:index];
    [cell bindCellModel:self.cellModel index:index];
    return cell;
}

- (void)didSelectItemAtIndex:(NSInteger)index {
    NSLog(@"点击了CommentsSectionController title index == %ld", index);
}

- (void)didUpdateToObject:(id)object {
    // 得到cellModel
    self.cellModel = object;
}

@end
