//
//  TitleCellModel.m
//  ComplexListFromIGListKit_test
//
//  Created by wdyzmx on 2020/6/3.
//  Copyright © 2020 wdyzmx. All rights reserved.
//

#import "TitleCellModel.h"

@implementation TitleCellModel

- (id<NSObject>)diffIdentifier {
    return self.username;  // 把username当做diffIdentifier
}

- (BOOL)isEqualToDiffableObject:(NSObject<IGListDiffable> *)object {
    if (self == object) {
        return YES;
    }
    TitleCellModel *cellModel = (TitleCellModel *)object;
    return [self.username isEqualToString:cellModel.username];
}

@end
