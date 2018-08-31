//
//  CSClassItemModel.h
//  CSAdPicView_Example
//
//  Created by Sahara on 2018/8/31.
//  Copyright © 2018年 CoderSahara. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "CSAdPicProtocol.h"

@interface CSClassItemModel : NSObject <CSAdPicProtocol>

@property (nonatomic, copy)  NSString *id;
@property (nonatomic, copy)  NSString *name;
@property (nonatomic, copy)  NSString *title;
@property (nonatomic, assign)  BOOL isChecked;
@property (nonatomic, assign)  NSInteger orderNum;
@property (nonatomic, copy)  NSString *coverPath;
@property (nonatomic, assign)  BOOL selectedSwitch;
@property (nonatomic, assign)  BOOL isFinished;
@property (nonatomic, copy)  NSString *contentType;
@property (nonatomic, assign)  NSInteger categoryType;
@property (nonatomic, assign)  BOOL filterSupported;
@property (nonatomic, assign)  BOOL isPaid;


@end
