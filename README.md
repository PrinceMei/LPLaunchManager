# LPLaunchManager

[![License MIT](https://img.shields.io/badge/license-MIT-green.svg?style=flat)](https://raw.githubusercontent.com/xiaofei86/LPLaunchManager/master/LICENSE)&nbsp;
[![CocoaPods](http://img.shields.io/cocoapods/p/YYKit.svg?style=flat)](http://www.apple.com/ios/)&nbsp;
[![Support](https://img.shields.io/badge/support-iOS%207%2B%20-blue.svg?style=flat)](https://en.wikipedia.org/wiki/IOS_7)&nbsp;
[![Support](https://img.shields.io/badge/blog-xuyafei.cn-orange.svg)](http://www.xuyafei.cn)&nbsp;

启动广告。

[图片备用链接](http://f.picphotos.baidu.com/album/s%3D680%3Bq%3D90/sign=4d87be32d32a283447a635036b8eb8d7/fd039245d688d43faa4a3fdd7a1ed21b0ef43b39.jpg)

<img src = "https://github.com/xiaofei86/LPLaunchManager/raw/master/Images/1.jpg" width = 373>

#OneLine

	+ (void)showAdvertWithURL:(NSString *)URL disappearHandler:(DisappearHandler)disappearHandler;
	
#Usage

通过showAdvertWithURL:disappearHandler:提供从服务器获取广告图片的链接。每次启动显示的广告都为上次的缓存。

通过duration设置启动广告的时间，默认3秒。

	@property (nonatomic, assign) NSTimeInterval duration;


如果要显示跳过按钮可以通过showSkipButton:completed:添加。

	+ (void)showSkipButton:(ConfigurationHandler)configurationHandler
	             completed:(CompletionHandler)completionHandler;

由于4.0寸到5.5寸的屏幕比例基本相同。所以在这个尺寸范围内会通过advertScale来确定广告的显示比例。默认为920/1136。而在3.5寸屏幕上需要单独设置advertOffset，表示广告图片距底部的距离，默认为108。

	@property (nonatomic, assign) CGFloat advertOffset;
	@property (nonatomic, assign) CGFloat advertScale;

