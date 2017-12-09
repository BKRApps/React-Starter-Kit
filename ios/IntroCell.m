//
//  IntroCell.m
//  ReactExample
//
//  Created by Birapuram Kumar Reddy on 12/9/17.
//  Copyright © 2017 KRSimpleApps. All rights reserved.
//

#import "IntroCell.h"

@implementation IntroCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    // Configure the view for the selected state
}

-(void)configure:(NSString*)heading andDesc:(NSString*)description{
  self.heading.text = heading;
  self.desc.text = description;
}

@end
