//  https://github.com/yesencai/AdPictureView.git
//  DLAdPictureView.h
//  Pods
//
//  Created by Dylan on 2017/4/28.
//
//

#import <Foundation/Foundation.h>
#import "DLAdPictureProtocol.h"

typedef void(^LoadImageBlock)(UIImageView *imageView, NSURL *url);

@protocol DLAdPicViewDelegate <NSObject>

- (void)adPicViewDidSelectedPicModel: (id <DLAdPictureProtocol>)picModle;

@end



@interface DLAdPictureView : UIView

+ (instancetype)picViewWithLoadImageBlock: (LoadImageBlock)loadBlock;
/**
 *  用于加载图片的代码块, 必须赋值
 */
@property (nonatomic, copy) LoadImageBlock loadBlock;

/**
 *  用于告知外界, 当前滚动到的是哪个广告数据模型
 */
@property (nonatomic, strong) id<DLAdPicViewDelegate> delegate;

/**
 *  用来展示图片的数据源
 */
@property (nonatomic, strong) NSArray <id <DLAdPictureProtocol>>*picModels;

@end
