//
//  CSViewController.m
//  CSAdPicView
//
//  Created by CoderSahara on 08/31/2018.
//  Copyright (c) 2018 CoderSahara. All rights reserved.
//

#import "CSViewController.h"
#import "CSAdPicView.h"
#import "UIImageView+WebCache.h"
#import "CSAdPicModel.h"
#import "CSFocusImageModel.h"

@interface CSViewController ()

@property (nonatomic, strong) NSMutableArray <CSFocusImageModel *>* focusImageMs;
@property (nonatomic, strong) CSAdPicView *adPicView;

@end

@implementation CSViewController



-(CSAdPicView *)adPicView {
    if (_adPicView == nil) {
        CSAdPicView *adPicView = [CSAdPicView picViewWithLoadImageBlock:^(UIImageView *imageView, NSURL *url) {
            [imageView sd_setImageWithURL:url];
        }];
        _adPicView = adPicView;
    }
    return _adPicView;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // 添加Banner轮播视图
    [self.view addSubview:self.adPicView];
    self.adPicView.frame = CGRectMake(0, 64, [UIScreen mainScreen].bounds.size.width, 150);
    
    // 获取图片数据模型数组
    [self getFocusImageMs];
    
    // 图片数据模型数组 => 轮播图数据模型数组
    NSMutableArray *adPicMs = [NSMutableArray new];
    for (CSFocusImageModel *imageM in self.focusImageMs) {
        
        CSAdPicModel *adPicM = [[CSAdPicModel alloc] init];
        adPicM.focusImageM = imageM;
        [adPicMs addObject:adPicM];
    }
    
    // 把图片设置到轮播视图上面
    self.adPicView.picModels = adPicMs;

}

// 获取图片数据模型数组
- (void)getFocusImageMs {
    for (NSInteger i = 0; i < 5; i++) {
        CSFocusImageModel *focusImageM = [[CSFocusImageModel alloc] init];
        switch (i) {
            case 0:
                focusImageM.id = 3790;
                focusImageM.shortTitle = @"位置0";
                focusImageM.pic = @"http://fdfs.xmcdn.com/group28/M08/77/01/wKgJXFlZrGGy-6-PAAOVGMCS0no895_ios_large.jpg";
                focusImageM.type = 4;
                focusImageM.longTitle = @"位置0-longTitle";
                break;
            case 1:
                focusImageM.id = 3791;
                focusImageM.shortTitle = @"位置1";
                focusImageM.pic = @"http://fdfs.xmcdn.com/group28/M08/77/01/wKgJXFlZrGGy-6-PAAOVGMCS0no895_ios_large.jpg";
                focusImageM.type = 4;
                focusImageM.longTitle = @"位置1-longTitle";
                break;
            case 2:
                focusImageM.id = 3792;
                focusImageM.shortTitle = @"位置2";
                focusImageM.pic = @"http://fdfs.xmcdn.com/group28/M08/77/01/wKgJXFlZrGGy-6-PAAOVGMCS0no895_ios_large.jpg";
                focusImageM.type = 4;
                focusImageM.longTitle = @"位置2-longTitle";
                break;
            case 3:
                focusImageM.id = 3793;
                focusImageM.shortTitle = @"位置3";
                focusImageM.pic = @"http://fdfs.xmcdn.com/group28/M08/77/01/wKgJXFlZrGGy-6-PAAOVGMCS0no895_ios_large.jpg";
                focusImageM.type = 4;
                focusImageM.longTitle = @"位置3-longTitle";
                break;
            default:
                focusImageM.id = 3794;
                focusImageM.shortTitle = @"位置4";
                focusImageM.pic = @"http://fdfs.xmcdn.com/group28/M08/77/01/wKgJXFlZrGGy-6-PAAOVGMCS0no895_ios_large.jpg";
                focusImageM.type = 4;
                focusImageM.longTitle = @"位置4-longTitle";
                break;
        }
        [self.focusImageMs addObject:focusImageM];
    }
}

- (NSMutableArray<CSFocusImageModel *> *)focusImageMs{
    if (_focusImageMs == nil) {
        _focusImageMs = [NSMutableArray new];
    }
    return _focusImageMs;
}

@end
