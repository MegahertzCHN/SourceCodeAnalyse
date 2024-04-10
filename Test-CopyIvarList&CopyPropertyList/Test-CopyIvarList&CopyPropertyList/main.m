//
//  main.m
//  Test-CopyIvarList&CopyPropertyList
//
//  Created by Chill on 2024/4/10.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import <objc/runtime.h>
#import "MyClass.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        
        // 获取 MyClass 类的指针
        Class myClass = [MyClass class];
        
        // 获取 MyClass 类的属性列表
        unsigned int count;
        objc_property_t *propertyList = class_copyPropertyList(myClass, &count);
        
        // 遍历属性列表并打印属性名
        for (unsigned int i = 0; i < count; i++) {
            objc_property_t property = propertyList[i];
            const char *propertyName = property_getName(property); // 获取属性名
            NSLog(@"Property name: %s", propertyName);
        }
        
        // 获取 MyClass 类的实例变量列表
        unsigned int count1;
        Ivar *ivarList = class_copyIvarList(myClass, &count1);
        
        // 遍历实例变量列表并打印变量名
        for (unsigned int i = 0; i < count1; i++) {
            Ivar ivar = ivarList[i];
            const char *ivarName = ivar_getName(ivar); // 获取变量名
            NSLog(@"Instance variable name: %s", ivarName);
        }
        
        // 释放属性列表
        free(propertyList);
        
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
