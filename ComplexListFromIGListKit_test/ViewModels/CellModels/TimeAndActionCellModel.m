//
//  TimeAndActionCellModel.m
//  ComplexListFromIGListKit_test
//
//  Created by wdyzmx on 2020/6/3.
//  Copyright © 2020 wdyzmx. All rights reserved.
//

#import "TimeAndActionCellModel.h"

@implementation TimeAndActionCellModel

- (id<NSObject>)diffIdentifier {
    return self.intervalStr;
}

- (BOOL)isEqualToDiffableObject:(NSObject<IGListDiffable> *)object {
    if (self == object) {
       return YES;
    }
    TimeAndActionCellModel *cellModel = (TimeAndActionCellModel *)object;
    return [self.intervalStr isEqualToString:cellModel.intervalStr];
}

@end
