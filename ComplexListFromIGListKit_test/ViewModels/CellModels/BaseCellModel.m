//
//  BaseCellModel.m
//  ComplexListFromIGListKit_test
//
//  Created by wdyzmx on 2020/6/3.
//  Copyright © 2020 wdyzmx. All rights reserved.
//

#import "BaseCellModel.h"

@implementation BaseCellModel

- (id<NSObject>)diffIdentifier {
    return self;
}

- (BOOL)isEqualToDiffableObject:(NSObject<IGListDiffable> *)object {
    if (self == object) {
        return YES;
    } else if ([object isKindOfClass:[BaseCellModel class]]) {
        return YES;
    } else {
        return NO;
    }
}

@end
