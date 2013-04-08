//
//  DetailViewController2ViewController.h
//  DemoPattern
//
//  Created by iOS12 on 4/8/13.
//  Copyright (c) 2013 Nguyen Van Thanh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Food.h"

@interface DetailViewController2ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITableView *tableview;
@property (nonatomic) Food* food;
@end
