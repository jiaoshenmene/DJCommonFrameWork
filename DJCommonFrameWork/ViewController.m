//
//  ViewController.m
//  DJCommonFrameWork
//
//  Created by sogou on 16/5/27.
//  Copyright © 2016年 sogou. All rights reserved.
//

#import "ViewController.h"

#import "DJCommonFrameWork_a.h"
#import "DJMediator.h"

@interface ViewController ()<DJConnectorPrt>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [DJCommonFrameWork_a test];
    [DJMediator canRouteURL:[NSURL URLWithString:@"productScheme://framework?username=dujia&password=123"]];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
