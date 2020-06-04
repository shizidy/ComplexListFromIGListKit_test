//
//  PicsCell.m
//  ComplexListFromIGListKit_test
//
//  Created by wdyzmx on 2020/6/4.
//  Copyright © 2020 wdyzmx. All rights reserved.
//

#import "PicsCell.h"

@interface PicsCell ()
// 最多9张照片（九宫格）
@property (nonatomic, strong) UIImageView *picImgView1;
@property (nonatomic, strong) UIImageView *picImgView2;
@property (nonatomic, strong) UIImageView *picImgView3;
@property (nonatomic, strong) UIImageView *picImgView4;
@property (nonatomic, strong) UIImageView *picImgView5;
@property (nonatomic, strong) UIImageView *picImgView6;
@property (nonatomic, strong) UIImageView *picImgView7;
@property (nonatomic, strong) UIImageView *picImgView8;
@property (nonatomic, strong) UIImageView *picImgView9;

@property (nonatomic, strong) NSMutableArray *imgViewArray;

@end

@implementation PicsCell

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setSubviews];
    }
    return self;
}

- (void)setSubviews {
    // 设置 clipsToBounds = YES 子视图超出contentView不显示
    self.contentView.clipsToBounds = YES;
    
    CGFloat space = 10;
    CGFloat headPicWidth = 50;
    CGFloat picWidth = (kScreenWidth - space * 5 - headPicWidth) / 3;
    CGFloat picX = space * 2 + headPicWidth;
    for (int i = 0; i < 9; i++) {
        UIImageView *imgView = [[UIImageView alloc] init];
        [self.contentView addSubview:imgView];
        NSInteger row = i / 3;
        NSInteger col = i % 3;
        imgView.frame = CGRectMake(picX + col * space + col * picWidth, row * space + row * picWidth, picWidth, picWidth);
        [self.imgViewArray addObject:imgView];
        // 简单设置一下展示图片
        NSString *imgName = [@"head" stringByAppendingFormat:@"%ld", col + 1];
        if ([UIImage imageNamed:imgName]) {
            imgView.image = [UIImage imageNamed:imgName];
        } else {
            imgView.backgroundColor = [UIColor lightGrayColor];
        }
        switch (i) {
            case 0:
                self.picImgView1 = imgView;
                break;
                
            case 1:
                self.picImgView2 = imgView;
                break;
                
            case 2:
                self.picImgView3 = imgView;
                break;
                
            case 3:
                self.picImgView4 = imgView;
                break;
                
            case 4:
                self.picImgView5 = imgView;
                break;
            
            case 5:
                self.picImgView6 = imgView;
                break;
                
            case 6:
                self.picImgView7 = imgView;
                break;
                
            case 7:
                self.picImgView8 = imgView;
                break;
                
            case 8:
                self.picImgView9 = imgView;
                break;
                
            default:
                break;
        }
    }
    
    [self setSubviewsConstraints];
}

- (void)setSubviewsConstraints {
    
}

- (void)bindCellModel:(PicsCellModel *)cellModel index:(NSInteger)index {
    NSInteger count = cellModel.picsArray.count;
    for (NSInteger i = 0; i < self.imgViewArray.count; i++) {
        UIImageView *imgView = self.imgViewArray[i];
        if (i < count) {
            imgView.hidden = NO;
        } else {
            imgView.hidden = YES;
        }
    }
}

- (NSMutableArray *)imgViewArray {
    if (!_imgViewArray) {
        _imgViewArray = [NSMutableArray array];
    }
    return _imgViewArray;
}

@end
