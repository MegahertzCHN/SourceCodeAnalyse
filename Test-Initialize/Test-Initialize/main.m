//
//  main.m
//  Test-Initialize
//
//  Created by Chill on 2024/4/10.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "ZHObject.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        __unused ZHObject *object = [[ZHObject alloc] init];
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
