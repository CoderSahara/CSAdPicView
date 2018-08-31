//
//  CSAdPicModel.m
//  CSAdPicView_Example
//
//  Created by Sahara on 2018/8/31.
//  Copyright © 2018年 CoderSahara. All rights reserved.
//

#import "CSAdPicModel.h"

@implementation CSAdPicModel

-(void)setFocusImageM:(CSFocusImageModel *)focusImageM
{
    _focusImageM = focusImageM;
    self.adImgURL = [NSURL URLWithString:_focusImageM.pic];
    
}

-(void)setLiveM:(CSLiveModel *)liveM {
    _liveM = liveM;
    self.adImgURL = [NSURL URLWithString:_liveM.coverPath];
}

-(void)setTuiguangM:(CSTuiguangModel *)tuiguangM
{
    _tuiguangM = tuiguangM;
    self.adImgURL = [NSURL URLWithString:_tuiguangM.cover];
}

-(void)setClassItemM:(CSClassItemModel *)classItemM
{
    _classItemM = classItemM;
    self.adImgURL = [NSURL URLWithString:_classItemM.coverPath];
}

@end
