//
//  EaseUIHelper.h
//  ChatDemo
//
//  Created by Jesse Xu on 9/30/18.
//  Copyright © 2018 liyiliapp.com. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface EaseUIHelper : NSObject

+ (instancetype)shareHelper;

- (void) registerIMApplication:(UIApplication *)application
 didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;

@end


