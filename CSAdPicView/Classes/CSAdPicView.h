//
//  CSAdPicView.h
//  CSAdPicView_Example
//
//  Created by Sahara on 2018/8/31.
//  Copyright © 2018年 CoderSahara. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CSAdPicProtocol.h"

typedef void(^LoadImageBlock)(UIImageView *imageView, NSURL *url);

@protocol CSAdPicViewDelegate <NSObject>

- (void)adPicViewDidSelectedPicModel: (id <CSAdPicProtocol>)picModel;

@end




@interface CSAdPicView : UIView

+ (instancetype)picViewWithLoadImageBlock: (LoadImageBlock)loadBlock;


/**
 *  用于加载图片的代码块, 必须赋值
 */
@property (nonatomic, copy) LoadImageBlock loadBlock;


/**
 *  用于告诉控件外部, 当前滚到哪个广告数据模型
 */
@property (nonatomic, strong)  id<CSAdPicViewDelegate> delegate;


/**
 *  用来展示图片的数据源数组
 */
@property (nonatomic, strong) NSArray  <id <CSAdPicProtocol>>*picModels;

@end
