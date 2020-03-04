//
//  ViewController.m
//  设计模式-原型模式
//
//  Created by 高翔 on 2020/3/4.
//  Copyright © 2020 高翔. All rights reserved.
//

#import "ViewController.h"
#import "Client.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Client *c = [Client new];
//    [c copyProprrety1];
//    [c copySubProprrety1];
    [c copyProprrety2];
}


@end
