//
//  ReactViewController.h
//  ReactExample
//
//  Created by Birapuram Kumar Reddy on 12/9/17.
//  Copyright © 2017 KRSimpleApps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ReactViewController : UIViewController

-(instancetype)initWith:(NSString*)reactModule andProps:(NSDictionary*)props;

@end
