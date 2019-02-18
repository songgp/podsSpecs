//
//  UIScreen+CYPSafeArea.m
//  Category
//
//  Created by 马敬龙 on 2018/10/29.
//  Copyright © 2018年 ma. All rights reserved.
//

#import "UIScreen+CYPSafeArea.h"

@implementation UIScreen (CYPSafeArea)



+ (CGSize)cyp_screenSizeFor58Inch {
    return CGSizeMake(375, 812);
}
static NSInteger cyp_is58InchScreen = -1;
+ (BOOL)cyp_is58InchScreen {
    if (cyp_is58InchScreen < 0) {
        UIScreen * mainScreen = [UIScreen mainScreen];
        cyp_is58InchScreen = (mainScreen.bounds.size.width == self.cyp_screenSizeFor58Inch.width && mainScreen.bounds.size.height == self.cyp_screenSizeFor58Inch.height) ? 1 : 0;
    }
    return cyp_is58InchScreen > 0;
}
+ (UIEdgeInsets)c_safeAreaInsetsForIPhoneX {
    if (![self cyp_is58InchScreen]) {
        return UIEdgeInsetsZero;
    }
    
    UIInterfaceOrientation orientation = [[UIApplication sharedApplication] statusBarOrientation];
    
    switch (orientation) {
        case UIInterfaceOrientationPortrait:
            return UIEdgeInsetsMake(44, 0, 34, 0);
            
        case UIInterfaceOrientationPortraitUpsideDown:
            return UIEdgeInsetsMake(34, 0, 44, 0);
            
        case UIInterfaceOrientationLandscapeLeft:
        case UIInterfaceOrientationLandscapeRight:
            return UIEdgeInsetsMake(0, 44, 21, 44);
            
        case UIInterfaceOrientationUnknown:
        default:
            return UIEdgeInsetsMake(44, 0, 34, 0);
    }
}

@end
