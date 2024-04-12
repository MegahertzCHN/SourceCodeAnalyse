//
//  ViewController.m
//  Test-Initialize
//
//  Created by Chill on 2024/4/10.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

+ (void)initialize {
    NSLog(@"ViewController -- initialize");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"%s", __func__);
}


@end
