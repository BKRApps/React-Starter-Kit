//
//  IntroViewController.h
//  ReactExample
//
//  Created by Birapuram Kumar Reddy on 12/9/17.
//  Copyright © 2017 KRSimpleApps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IntroViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@end

@interface Model : NSObject
@property (strong) NSString *heading;
@property (strong) NSString *desc;
@property (strong) NSString *reactModuleName;
@property (strong) NSDictionary *props;
-(instancetype)initWith:(NSString*)heading andDesc:(NSString*)desc;
@end


