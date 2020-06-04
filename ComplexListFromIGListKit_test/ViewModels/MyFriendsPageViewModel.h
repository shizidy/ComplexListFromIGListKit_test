//
//  MyFriendsPageViewModel.h
//  ComplexListFromIGListKit_test
//
//  Created by wdyzmx on 2020/6/3.
//  Copyright © 2020 wdyzmx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TitleCellModel.h"
#import "PicsCellModel.h"
#import "TimeAndActionCellModel.h"
#import "CommentsCellModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface MyFriendsPageViewModel : NSObject

@property (nonatomic, strong) TitleCellModel *titleCellModel;
@property (nonatomic, strong) PicsCellModel *picCellModel;
@property (nonatomic, strong) TimeAndActionCellModel *tACellModel;
@property (nonatomic, strong) CommentsCellModel *commentCellModel;

@property (nonatomic, strong) NSMutableArray *cellModelArray;

@end

NS_ASSUME_NONNULL_END
