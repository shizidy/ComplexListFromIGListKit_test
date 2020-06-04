//
//  TimeAndActionCell.m
//  ComplexListFromIGListKit_test
//
//  Created by wdyzmx on 2020/6/4.
//  Copyright © 2020 wdyzmx. All rights reserved.
//

#import "TimeAndActionCell.h"

@interface TimeAndActionCell ()

@property (nonatomic,strong) UILabel *timeLabel;
@property (nonatomic, strong) UIButton *actionButton;

@end

@implementation TimeAndActionCell

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setSubviews];
    }
    return self;
}

- (void)setSubviews {
    self.timeLabel = [[UILabel alloc] init];
    [self.contentView addSubview:self.timeLabel];
    
    self.actionButton = [[UIButton alloc] init];
    [self.contentView addSubview:self.actionButton];
    
    [self setSubviewsConstraints];
}

- (void)setSubviewsConstraints {
    CGFloat cellHeight = 50;
    self.timeLabel.frame = CGRectMake(10, 0, kScreenWidth - 10 - 60 - 10, cellHeight);
    
    self.actionButton.frame = CGRectMake(kScreenWidth - 60 - 10, cellHeight / 2 - 40 / 2, 60, 40);
    [self.actionButton setTitle:@"评论" forState:UIControlStateNormal];
    [self.actionButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.actionButton.backgroundColor = [UIColor redColor];
    [self.actionButton addTarget:self action:@selector(action:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)action:(UIButton *)btn {
    NSLog(@"action");
}

- (void)bindCellModel:(TimeAndActionCellModel *)cellModel index:(NSInteger)index {
    self.timeLabel.text = cellModel.intervalStr;
}

@end
