//  https://github.com/yesencai/AdPictureView.git
//  DLAdPictureProtocol.h
//  Pods
//
//  Created by Dylan on 2017/4/28.
//
//

@protocol DLAdPictureProtocol <NSObject>

/**
 *  广告图片URL
 */
@property (nonatomic, copy, readonly) NSURL *adImgURL;


/**
 *  点击执行的代码块(优先级高于adLinkURL)
 */
@property (nonatomic, copy) void(^clickBlock)();

@end
