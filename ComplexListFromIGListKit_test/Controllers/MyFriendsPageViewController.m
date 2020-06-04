//
//  MyFriendsPageViewController.m
//  ComplexListFromIGListKit_test
//
//  Created by wdyzmx on 2020/6/3.
//  Copyright © 2020 wdyzmx. All rights reserved.
//

#import "MyFriendsPageViewController.h"
#import "MyFriendsPageViewModel.h"

@interface MyFriendsPageViewController () <IGListAdapterDataSource, IGListAdapterDelegate, UIScrollViewDelegate>

/// adapter
@property (nonatomic, strong) IGListAdapter *adapter;
/// collectionView
@property (nonatomic, strong) UICollectionView *collectionView;
/// viewModel
@property (nonatomic, strong) MyFriendsPageViewModel *viewModel;

@end

@implementation MyFriendsPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    [self setUI];
    // Do any additional setup after loading the view.
}

- (void)setUI {
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.collectionView];
    
    self.adapter.collectionView = self.collectionView;
}

#pragma mark - IGListAdapterDataSource
- (NSArray<id<IGListDiffable>> *)objectsForListAdapter:(IGListAdapter *)listAdapter {
    // 对应各个cellModel
    return self.viewModel.cellModelArray;
}

- (IGListSectionController *)listAdapter:(IGListAdapter *)listAdapter sectionControllerForObject:(id)object {
    NSString *objectString = NSStringFromClass([object class]);
    NSString *sectionControllerString = [objectString stringByReplacingOccurrencesOfString:@"CellModel" withString:@"SectionController"];
    Class SectionController = NSClassFromString(sectionControllerString);
    return [SectionController new];
}

- (UIView *)emptyViewForListAdapter:(IGListAdapter *)listAdapter {
    return nil;
}

#pragma mark - IGListAdapterDelegate
- (void)listAdapter:(IGListAdapter *)listAdapter willDisplayObject:(id)object atIndex:(NSInteger)index {
    
}

- (void)listAdapter:(IGListAdapter *)listAdapter didEndDisplayingObject:(id)object atIndex:(NSInteger)index {
    
}

#pragma mark - 懒加载
- (UICollectionView *)collectionView {
    if (!_collectionView) {
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        _collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, kStatusBarHeight + self.navigationController.navigationBar.frame.size.height, kScreenWidth, kScreenHeight - kStatusBarHeight - self.navigationController.navigationBar.frame.size.height) collectionViewLayout:layout];
        _collectionView.backgroundColor = [UIColor whiteColor];
        if (@available(iOS 11.0, *)) {
            _collectionView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        } else {
            self.automaticallyAdjustsScrollViewInsets = NO;
        }
    }
    return _collectionView;
}

- (IGListAdapter *)adapter {
    if (!_adapter) {
        _adapter = [[IGListAdapter alloc] initWithUpdater:[IGListAdapterUpdater new] viewController:self];
        _adapter.dataSource = self;
        _adapter.delegate = self;
        _adapter.scrollViewDelegate = self;
    }
    return _adapter;
}

- (MyFriendsPageViewModel *)viewModel {
    if (!_viewModel) {
        _viewModel = [[MyFriendsPageViewModel alloc] init];
    }
    return _viewModel;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
