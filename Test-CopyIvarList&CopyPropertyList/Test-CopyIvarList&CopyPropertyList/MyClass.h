//
//  MyClass.h
//  Test-CopyIvarList&CopyPropertyList
//
//  Created by Chill on 2024/4/10.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyClass : NSObject {
    NSInteger myInteger;
    NSString *myString;
}

@property(nonatomic, strong) NSString *propertyName;
@property(nonatomic, assign) NSInteger propertyNumber;

@end

NS_ASSUME_NONNULL_END
