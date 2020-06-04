//
//  PicsCellModel.m
//  ComplexListFromIGListKit_test
//
//  Created by wdyzmx on 2020/6/3.
//  Copyright © 2020 wdyzmx. All rights reserved.
//

#import "PicsCellModel.h"

@implementation PicsCellModel

- (id<NSObject>)diffIdentifier {
    return self;
}

- (BOOL)isEqualToDiffableObject:(NSObject<IGListDiffable> *)object {
    if (self == object) {
        return YES;
    }
    PicsCellModel *cellModel = (PicsCellModel *)object;
    return [self.picsArray isEqualToArray:cellModel.picsArray];
}

@end
