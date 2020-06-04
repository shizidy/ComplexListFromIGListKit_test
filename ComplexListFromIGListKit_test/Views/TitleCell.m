//
//  TitleCell.m
//  ComplexListFromIGListKit_test
//
//  Created by wdyzmx on 2020/6/4.
//  Copyright © 2020 wdyzmx. All rights reserved.
//

#import "TitleCell.h"

@interface TitleCell ()

@property (nonatomic, strong) UIImageView *headPicImgView;
@property (nonatomic, strong) UILabel *usernameLabel;
@property (nonatomic, strong) UILabel *titleLabel;

@end

@implementation TitleCell

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setSubviews];
    }
    return self;
}

- (void)setSubviews {
    self.headPicImgView = [[UIImageView alloc] init];
    [self.contentView addSubview:self.headPicImgView];
    
    self.usernameLabel = [[UILabel alloc] init];
    [self.contentView addSubview:self.usernameLabel];
    
    self.titleLabel = [[UILabel alloc] init];
    [self.contentView addSubview:self.titleLabel];
    
    [self setSubviewsConstraints];
}

- (void)setSubviewsConstraints {
    CGFloat cellHeight = 60;
    CGFloat picWidth = 50;
    self.headPicImgView.frame = CGRectMake(10, cellHeight / 2 - picWidth / 2, picWidth, picWidth);
    self.usernameLabel.frame = CGRectMake(CGRectGetMaxX(self.headPicImgView.frame) + 10, 0, kScreenWidth - (CGRectGetMaxX(self.headPicImgView.frame) + 10), cellHeight / 2);
    self.titleLabel.frame = CGRectMake(CGRectGetMinX(self.usernameLabel.frame), CGRectGetMaxY(self.usernameLabel.frame), CGRectGetWidth(self.usernameLabel.frame), CGRectGetHeight(self.usernameLabel.frame));
}

- (void)bindCellModel:(TitleCellModel *)cellModel index:(NSInteger)index {
    self.headPicImgView.image = [UIImage imageNamed:cellModel.picname];
    self.usernameLabel.text = cellModel.username;
    self.titleLabel.text = cellModel.title;
}

@end
