//
//  UIViewController+Analyse.h
//  Test-MethodSwizzling
//
//  Created by Chill on 2024/4/10.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (Analyse)

- (void)zh_ViewWillAppear:(BOOL)appear;

@end

NS_ASSUME_NONNULL_END
