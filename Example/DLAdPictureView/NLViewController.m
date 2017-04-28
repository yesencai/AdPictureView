//
//  NLViewController.m
//  DLAdPictureView
//
//  Created by yesencai@163.com on 04/28/2017.
//  Copyright (c) 2017 yesencai@163.com. All rights reserved.
//

#import "NLViewController.h"
#import "DLAdPictureView.h"
#import "UIImageView+WebCache.h"
#import "DLAdModle.h"
@interface NLViewController ()<DLAdPicViewDelegate>
/**  */
@property (nonatomic, weak) DLAdPictureView *picView;

@end

@implementation NLViewController

- (DLAdPictureView *)picView
{
    if (!_picView) {
        DLAdPictureView *picView = [DLAdPictureView picViewWithLoadImageBlock:^(UIImageView *imageView, NSURL *url) {
            [imageView sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:@""]];
        }];
        picView.frame = CGRectMake(0, 60, [UIScreen mainScreen].bounds.size.width, 150);
        [self.view addSubview:picView];
        picView.delegate = self;
        _picView = picView;
    }
    return _picView;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSMutableArray <id<DLAdPictureProtocol>> *array = [NSMutableArray array];
    DLAdModle *modle1 = [[DLAdModle alloc]init];
    modle1.adImgURL = [NSURL URLWithString:@"http://fdfs.xmcdn.com/group27/M01/80/D8/wKgJW1kBryGg8REsAAPIcZq-BWQ195_ios_large.jpg"];
    modle1.clickBlock = ^{
        
    };
    DLAdModle *modle2 = [[DLAdModle alloc]init];
    modle2.adImgURL = [NSURL URLWithString:@"http://fdfs.xmcdn.com/group27/M04/87/FA/wKgJW1kB_7SDHPUhAAKLspS2etA546_ios_large.jpg"];
    modle2.clickBlock = ^{
        
    };
    DLAdModle *modle3 = [[DLAdModle alloc]init];
    modle3.adImgURL = [NSURL URLWithString:@"http://fdfs.xmcdn.com/group27/M00/81/58/wKgJW1kBtpfinR7fAAFR7o1epcw021_ios_large.jpg"];
    modle3.clickBlock = ^{
        
    };
    DLAdModle *modle4 = [[DLAdModle alloc]init];
    modle4.adImgURL = [NSURL URLWithString:@"http://fdfs.xmcdn.com/group26/M05/FF/C3/wKgJWFj4h3TCGybXAALEr0b1CTQ148_ios_large.jpg"];
    modle4.clickBlock = ^{
        
    };
    DLAdModle *modle5 = [[DLAdModle alloc]init];
    modle5.adImgURL = [NSURL URLWithString:@"http://fdfs.xmcdn.com/group27/M03/F7/5E/wKgJW1jfflKCBiT_AANfXxQzfA4339_ios_large.jpg"];
    modle5.clickBlock = ^{
        
    };
    
    [array addObject:modle1];
    [array addObject:modle2];
    [array addObject:modle3];
    [array addObject:modle4];
    [array addObject:modle5];
    self.picView.picModels = array;
    
}

- (void)adPicViewDidSelectedPicModel:(id<DLAdPictureProtocol>)picM{
    NSLog(@"%@",picM);
    
}

@end
