//
//  CSLiveModel.h
//  CSAdPicView_Example
//
//  Created by Sahara on 2018/8/31.
//  Copyright © 2018年 CoderSahara. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "CSAdPicProtocol.h"

@interface CSLiveModel : NSObject <CSAdPicProtocol>

@property (nonatomic, copy)  NSString *chatId;
@property (nonatomic, copy, getter=adImgURL)  NSString *coverPath;
@property (nonatomic, copy)  NSString *endTs;
@property (nonatomic, copy)  NSString *id;
@property (nonatomic, copy)  NSString *name;
@property (nonatomic, copy)  NSString *onlineCount;
@property (nonatomic, copy)  NSString *playCount;
@property (nonatomic, copy)  NSString *scheduleId;
@property (nonatomic, copy)  NSString *shortDescription;
@property (nonatomic, copy)  NSString *startTs;
@property (nonatomic, copy)  NSString *status;

@property (nonatomic, copy) void(^clickBlock)();

@end
