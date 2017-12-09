//
//  ReactViewController.m
//  ReactExample
//
//  Created by Birapuram Kumar Reddy on 12/9/17.
//  Copyright © 2017 KRSimpleApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ReactViewController.h"
#import "AppDelegate.h"
#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>

@interface ReactViewController ()

@end

@implementation ReactViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(instancetype)initWith:(NSString *)reactModule andProps:(NSDictionary *)props{
  self = [super init];
  AppDelegate *appdelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
  RCTRootView *rootView = [[RCTRootView alloc] initWithBridge:appdelegate.reactBridge moduleName:reactModule initialProperties:props];
  self.view = rootView;
  return self;
}

@end
