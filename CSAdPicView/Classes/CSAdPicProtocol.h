//
//  CSAdPicProtocol.h
//  CSAdPicView
//
//  Created by Sahara on 2018/8/31.
//  Copyright © 2018年 CoderSahara. All rights reserved.
//

@protocol CSAdPicProtocol <NSObject>

/**
 *  广告图片URL
 */
@property (nonatomic, copy, readonly) NSURL *adImgURL;


/**
 *  点击执行的代码块(优先级高于adLinkURL)
 */
@property (nonatomic, copy) void(^clickBlock)();

@end

