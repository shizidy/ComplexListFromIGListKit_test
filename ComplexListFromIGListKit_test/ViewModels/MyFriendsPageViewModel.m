//
//  MyFriendsPageViewModel.m
//  ComplexListFromIGListKit_test
//
//  Created by wdyzmx on 2020/6/3.
//  Copyright © 2020 wdyzmx. All rights reserved.
//

#import "MyFriendsPageViewModel.h"

@interface MyFriendsPageViewModel ()

@end

@implementation MyFriendsPageViewModel

// 初始化一些假数据，共初始化三组，实际该viewModel应该负责网络请求返回网络数据
- (instancetype)init {
    if (self = [super init]) {
        for (int i = 0; i < 3; i++) {
            switch (i) {
                    case 0:
                    {
                        TitleCellModel *cellModel1 = [[TitleCellModel alloc] init];
                        cellModel1.picname = @"head1";
                        cellModel1.username = @"小明";
                        cellModel1.title = @"父是是否对公司被污染围绕各投标而同行业嫩嫩委托人";
                        
                        PicsCellModel *cellModel2 = [[PicsCellModel alloc] init];
                        cellModel2.picsArray = @[@"img1", @"img2", @"img3", @"img4", @"img5", @"img6", @"img7"];
                        
                        TimeAndActionCellModel *cellModel3 = [[TimeAndActionCellModel alloc] init];
                        cellModel3.intervalStr = @"时间戳11111111";
                        
                        CommentsCellModel *cellModel4 = [[CommentsCellModel alloc] init];
                        cellModel4.commentsArray = @[
                            @"小明：分为二个无人听别人",
                            @"小红：富翁",
                            @"小王：屋企人分为若干沃尔特很温柔",
                        ];
                        [self.cellModelArray addObject:cellModel1];
                        [self.cellModelArray addObject:cellModel2];
                        [self.cellModelArray addObject:cellModel3];
                        [self.cellModelArray addObject:cellModel4];
                    }
                        break;
                    
                    case 1:
                    {
                        TitleCellModel *cellModel1 = [[TitleCellModel alloc] init];
                        cellModel1.picname = @"head2";
                        cellModel1.username = @"小红";
                        cellModel1.title = @"啥地方放若干问题和一级棒而同行业嫩嫩委托人";
                        
                        PicsCellModel *cellModel2 = [[PicsCellModel alloc] init];
                        cellModel2.picsArray = @[@"img1", @"img2", @"img3", @"img4"];
                        
                        TimeAndActionCellModel *cellModel3 = [[TimeAndActionCellModel alloc] init];
                        cellModel3.intervalStr = @"时间戳22222222";
                        
                        CommentsCellModel *cellModel4 = [[CommentsCellModel alloc] init];
                        cellModel4.commentsArray = @[
                            @"小明：王东方日报",
                            @"小红：晚饭是撒旦法是我如果确认物态变化为若干沃尔特很温柔",
                        ];
                        [self.cellModelArray addObject:cellModel1];
                        [self.cellModelArray addObject:cellModel2];
                        [self.cellModelArray addObject:cellModel3];
                        [self.cellModelArray addObject:cellModel4];
                    }
                        break;
                    
                    case 2:
                    {
                        TitleCellModel *cellModel1 = [[TitleCellModel alloc] init];
                        cellModel1.picname = @"head3";
                        cellModel1.username = @"小李";
                        cellModel1.title = @"父是是否对公司被污染围绕各投标而同行业嫩嫩委托人";
                        
                        PicsCellModel *cellModel2 = [[PicsCellModel alloc] init];
                        cellModel2.picsArray = @[@"img1", @"img2"];
                        
                        TimeAndActionCellModel *cellModel3 = [[TimeAndActionCellModel alloc] init];
                        cellModel3.intervalStr = @"时间戳33333333";
                        
                        CommentsCellModel *cellModel4 = [[CommentsCellModel alloc] init];
                        cellModel4.commentsArray = @[
                            @"小红：水电费干味儿",
                            @"小明：体验和太阳能",
                            @"小王：屋企人独孤般若头部若干沃尔特很温柔",
                            @"小李：访问如风是阿道夫钱二分二夫人",
                        ];
                        [self.cellModelArray addObject:cellModel1];
                        [self.cellModelArray addObject:cellModel2];
                        [self.cellModelArray addObject:cellModel3];
                        [self.cellModelArray addObject:cellModel4];
                    }
                        break;
                    case 10:
                {
                    
                }
                        
                    default:
                        break;
            }
        }
    }
    return self;
}

//- (TitleCellModel *)titleCellModel {
//    if (!_titleCellModel) {
//        _titleCellModel = [[TitleCellModel alloc] init];
//    }
//    return _titleCellModel;
//}
//
//- (PicsCellModel *)picCellModel {
//    if (!_picCellModel) {
//        _picCellModel = [[PicsCellModel alloc] init];
//    }
//    return _picCellModel;
//}
//
//- (TimeAndActionCellModel *)tACellModel {
//    if (!_tACellModel) {
//        _tACellModel = [[TimeAndActionCellModel alloc] init];
//    }
//    return _tACellModel;
//}
//
//- (CommentsCellModel *)commentCellModel {
//    if (!_commentCellModel) {
//        _commentCellModel = [[CommentsCellModel alloc] init];
//    }
//    return _commentCellModel;
//}

- (NSMutableArray *)cellModelArray {
    if (!_cellModelArray) {
        _cellModelArray = [NSMutableArray array];
    }
    return _cellModelArray;
}



@end
