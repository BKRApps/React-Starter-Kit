//
//  IntroCell.h
//  ReactExample
//
//  Created by Birapuram Kumar Reddy on 12/9/17.
//  Copyright © 2017 KRSimpleApps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IntroCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *heading;
@property (weak, nonatomic) IBOutlet UILabel *desc;

-(void)configure:(NSString*)heading andDesc:(NSString*)description;
@end
