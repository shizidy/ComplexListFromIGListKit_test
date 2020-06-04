//
//  CommentsCellModel.m
//  ComplexListFromIGListKit_test
//
//  Created by wdyzmx on 2020/6/3.
//  Copyright © 2020 wdyzmx. All rights reserved.
//

#import "CommentsCellModel.h"

@implementation CommentsCellModel

- (id<NSObject>)diffIdentifier {
    return self;
}

- (BOOL)isEqualToDiffableObject:(NSObject<IGListDiffable> *)object {
    if (self == object) {
        return YES;
    }
    CommentsCellModel *cellModel = (CommentsCellModel *)object;
    return [self.commentsArray isEqualToArray:cellModel.commentsArray];
}

@end
