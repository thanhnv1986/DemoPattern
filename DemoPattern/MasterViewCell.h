//
//  MasterViewCell.h
//  DemoPattern
//
//  Created by Nguyen Van Thanh on 4/7/13.
//  Copyright (c) 2013 Nguyen Van Thanh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RatingView.h"

@interface MasterViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
@property (weak, nonatomic) IBOutlet RatingView *rating;
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UIImageView *photo;

@end
