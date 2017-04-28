//
//  DLAdModle.h
//  DLAdPictureView
//
//  Created by Dylan on 2017/4/28.
//  Copyright © 2017年 yesencai@163.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DLAdPictureProtocol.h"
@interface DLAdModle : NSObject <DLAdPictureProtocol>
/**
 *  广告图片URL
 */
@property (nonatomic, copy) NSURL *adImgURL;

/**
 *  点击执行的代码块(优先级高于adLinkURL)
 */
@property (nonatomic, copy) void(^clickBlock)();

@end
