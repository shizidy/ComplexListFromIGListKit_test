//
//  CommentsCell.h
//  ComplexListFromIGListKit_test
//
//  Created by wdyzmx on 2020/6/4.
//  Copyright © 2020 wdyzmx. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CommentsCellModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface CommentsCell : UICollectionViewCell

- (void)bindCellModel:(CommentsCellModel *)cellModel index:(NSInteger)index;

@end

NS_ASSUME_NONNULL_END
