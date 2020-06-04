//
//  CommentsCell.m
//  ComplexListFromIGListKit_test
//
//  Created by wdyzmx on 2020/6/4.
//  Copyright © 2020 wdyzmx. All rights reserved.
//

#import "CommentsCell.h"

@interface CommentsCell ()

@property (nonatomic,strong) UILabel *commentLabel;

@end

@implementation CommentsCell

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setSubviews];
    }
    return self;
}

- (void)setSubviews {
    self.contentView.backgroundColor = [UIColor lightGrayColor];
    self.commentLabel = [[UILabel alloc] init];
    [self.contentView addSubview:self.commentLabel];
    
    [self setSubviewsConstraints];
}

- (void)setSubviewsConstraints {
    CGFloat cellHeight = 40;
    self.commentLabel.frame = CGRectMake(10, 0, kScreenWidth - 10, cellHeight);
}

- (void)bindCellModel:(CommentsCellModel *)cellModel index:(NSInteger)index {
    NSString *comment = cellModel.commentsArray[index];
    self.commentLabel.text = comment;
}

@end
