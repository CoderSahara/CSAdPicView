//
//  CSAdPicModel.h
//  CSAdPicView_Example
//
//  Created by Sahara on 2018/8/31.
//  Copyright © 2018年 CoderSahara. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CSFocusImageModel.h"
#import "CSLiveModel.h"
#import "CSTuiguangModel.h"
#import "CSClassItemModel.h"

#import "CSAdPicProtocol.h"

@interface CSAdPicModel : NSObject <CSAdPicProtocol>

@property (nonatomic, strong) CSFocusImageModel *focusImageM;

@property (nonatomic, strong) CSLiveModel *liveM;

@property (nonatomic, strong) CSTuiguangModel *tuiguangM;

@property (nonatomic, strong) CSClassItemModel *classItemM;

/**
 *  广告图片URL
 */
@property (nonatomic, copy) NSURL *adImgURL;

/**
 *  点击广告, 需要跳转的URL
 */
@property (nonatomic, copy) NSURL *adLinkURL;

/**
 *  点击执行的代码块(优先级高于adLinkURL)
 */
@property (nonatomic, copy) void(^clickBlock)();

@end
