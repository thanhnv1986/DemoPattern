//
//  ViewController.m
//  DemoPattern
//
//  Created by Nguyen Van Thanh on 4/7/13.
//  Copyright (c) 2013 Nguyen Van Thanh. All rights reserved.
//

#import "ViewController.h"
#define NUMBER_BUTTON 3

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	for (int i = 0; NUMBER_BUTTON; i++) {
        UIView *view=[self.view viewWithTag:i+1];
        if ([view isKindOfClass:[UIButton class]]) {
            UIButton *btn=(UIButton*)view;
            [btn addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        }
    }
}
-(void)buttonClick:(id)sender{
    UIButton *btn=(UIButton*)sender;
    switch (btn.tag) {
        case 1:
            //cocktail
            break;
        case 2:
            //coffe
            break;
        case 3:
            //fastfood
            break;
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
