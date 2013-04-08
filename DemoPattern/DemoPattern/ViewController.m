//
//  ViewController.m
//  DemoPattern
//
//  Created by Nguyen Van Thanh on 4/7/13.
//  Copyright (c) 2013 Nguyen Van Thanh. All rights reserved.
//

#import "ViewController.h"
#import "DataManager.h"
#import "MasterViewController.h"

#define NUMBER_BUTTON 3

@interface ViewController ()
{
    MasterViewController* _masterView;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Menu";
	for (int i = 0;i < NUMBER_BUTTON; i++) {
        UIView *view=[self.view viewWithTag:i+1];
        if ([view isKindOfClass:[UIButton class]]) {
            UIButton *btn=(UIButton*)view;
            [btn addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        }
    }
    //DataManager *data=[DataManager sharedManager];
    
}
-(void)buttonClick:(id)sender{
    UIButton *btn=(UIButton*)sender;
    _masterView = [[MasterViewController alloc]initWithStyle:UITableViewStylePlain];
    switch (btn.tag) {
        case 1:
            //cocktail
            _masterView.groupId=@"1";
            _masterView.header=@"Cocktail";
            break;
        case 2:
            //coffe
            _masterView.groupId=@"2";
            _masterView.header=@"Coffe";
            break;
        case 3:
            //fastfood
            _masterView.groupId=@"3";
            _masterView.header=@"Fastfood";
            break;
    }
    [self.navigationController pushViewController:_masterView animated:YES];
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
