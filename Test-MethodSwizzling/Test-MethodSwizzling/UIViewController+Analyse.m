//
//  UIViewController+Analyse.m
//  Test-MethodSwizzling
//
//  Created by Chill on 2024/4/10.
//

#import "UIViewController+Analyse.h"
#import <objc/runtime.h>

@implementation UIViewController (Analyse)

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Class class = [self class];
        
        SEL originalSel = @selector(viewWillAppear:);
        SEL swizzledSel = @selector(zh_ViewWillAppear:);
        
        Method originalMethod = class_getInstanceMethod(class, originalSel);
        Method swizzledMethod = class_getInstanceMethod(class, swizzledSel);
        
        BOOL success = class_addMethod(class, originalSel, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod));
        if (success) {
            class_replaceMethod(class, swizzledSel, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod));
        } else {
            method_exchangeImplementations(originalMethod, swizzledMethod);
        }
    });
}

- (void)zh_ViewWillAppear:(BOOL)appear {
    [self zh_ViewWillAppear:appear];
    NSLog(@"zh_ViewWillAppear %@", self);
}

@end
