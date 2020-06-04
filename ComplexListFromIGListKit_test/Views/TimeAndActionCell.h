//
//  TimeAndActionCell.h
//  ComplexListFromIGListKit_test
//
//  Created by wdyzmx on 2020/6/4.
//  Copyright © 2020 wdyzmx. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TimeAndActionCellModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface TimeAndActionCell : UICollectionViewCell

- (void)bindCellModel:(TimeAndActionCellModel *)cellModel index:(NSInteger)index;

@end

NS_ASSUME_NONNULL_END
