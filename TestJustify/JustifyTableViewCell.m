//
//  JustifyTableViewCell.m
//  TestJustify
//
//  Created by Mauricio Bustamante Ortega on 22-08-14.
//  Copyright (c) 2014 rework. All rights reserved.
//

#import "JustifyTableViewCell.h"

@implementation JustifyTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
