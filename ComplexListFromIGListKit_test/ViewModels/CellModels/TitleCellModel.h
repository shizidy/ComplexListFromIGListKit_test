//
//  TitleCellModel.h
//  ComplexListFromIGListKit_test
//
//  Created by wdyzmx on 2020/6/3.
//  Copyright © 2020 wdyzmx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseCellModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface TitleCellModel : BaseCellModel

@property (nonatomic, copy) NSString *picname;
@property (nonatomic, copy) NSString *username;
@property (nonatomic, copy) NSString *title;

@end

NS_ASSUME_NONNULL_END
