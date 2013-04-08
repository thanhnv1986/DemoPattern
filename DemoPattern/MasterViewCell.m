//
//  MasterViewCell.m
//  DemoPattern
//
//  Created by Nguyen Van Thanh on 4/7/13.
//  Copyright (c) 2013 Nguyen Van Thanh. All rights reserved.
//

#import "MasterViewCell.h"

@implementation MasterViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        NSArray *arr = [[ NSBundle mainBundle]loadNibNamed:@"MasterViewCell" owner:self options:nil];
        self = [arr objectAtIndex:0];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
