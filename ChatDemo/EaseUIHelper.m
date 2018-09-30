//
//  EaseUIHelper.m
//  ChatDemo
//
//  Created by Jesse Xu on 9/30/18.
//  Copyright © 2018 liyiliapp.com. All rights reserved.
//

#import "EaseUIHelper.h"
#import "EaseUI.h"


@implementation EaseUIHelper

+ (instancetype)shareHelper
{
    static dispatch_once_t onceToken;
    static EaseUIHelper *helper;
    dispatch_once(&onceToken, ^{
        helper = [[EaseUIHelper alloc] init];
    });

    return helper;
}

- (void) registerIMApplication:(UIApplication *)application
     didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    #warning Init SDK，detail in AppDelegate+EaseMob.m
    #warning SDK注册 APNS文件的名字, 需要与后台上传证书时的名字一一对应
        NSString *apnsCertName = nil;
    #if DEBUG
        apnsCertName = @"demoappstore-dev";
    #else
        apnsCertName = @"demoappstore";
    #endif
    [[EaseSDKHelper shareHelper] hyphenateApplication: application
                        didFinishLaunchingWithOptions: launchOptions
                                               appkey: @"easemob-demo#chatdemoui"
                                         apnsCertName: apnsCertName
                                          otherConfig:@{kSDKConfigEnableConsoleLogger:[NSNumber numberWithBool:YES]}];
}
@end
