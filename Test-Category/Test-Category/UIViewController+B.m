//
//  UIViewController+B.m
//  Test-Category
//
//  Created by Chill on 2024/4/10.
//

#import "UIViewController+B.h"

@implementation UIViewController (B)

+ (void)load {
    NSLog(@"load B");
}

+ (void)test {
    NSLog(@"B");
}

+ (void)testB {
    NSLog(@"testB");
}

@end
