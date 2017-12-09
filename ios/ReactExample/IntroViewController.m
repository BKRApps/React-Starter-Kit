//
//  IntroViewController.m
//  ReactExample
//
//  Created by Birapuram Kumar Reddy on 12/9/17.
//  Copyright © 2017 KRSimpleApps. All rights reserved.
//

#import "IntroViewController.h"
#import "IntroCell.h"
#import "ReactViewController.h"

@interface IntroViewController ()
@property(strong) NSMutableArray *dataArray;
@end

@implementation IntroViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  self.dataArray = [[NSMutableArray alloc] init];
  [self prepareModels];
}


-(void)prepareModels{
  Model *simpleModel = [[Model alloc] initWith:@"Hello World" andDesc:@"Simple View with saying Hello to React Native World"];
  simpleModel.reactModuleName=@"HelloWorldEx";
  [self.dataArray addObject:simpleModel];

  Model *listViewModel = [[Model alloc] initWith:@"List View" andDesc:@"Render List View with dummy data"];
  listViewModel.reactModuleName=@"ListViewBasicEx";
  [self.dataArray addObject:listViewModel];

  Model *listViewNetworkModel = [[Model alloc] initWith:@"List View with Networking" andDesc:@"Render List View with data from Network"];
  listViewNetworkModel.reactModuleName=@"ListViewNetworkingEx";
  [self.dataArray addObject:listViewNetworkModel];
}


#pragma mark - UITableView datasource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
  return 3;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    IntroCell *cell = [tableView dequeueReusableCellWithIdentifier:@"introcell" forIndexPath:indexPath];
    Model *model = [self.dataArray objectAtIndex:indexPath.row];
    [cell configure:model.heading andDesc:model.desc];
    return cell;
}

#pragma mark- UITableView delegates

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
  Model *model = [self.dataArray objectAtIndex:indexPath.row];
  ReactViewController *reactController = [[ReactViewController alloc] initWith:model.reactModuleName andProps:model.props];
  [self.navigationController pushViewController:reactController animated:true];
}

@end


@implementation Model

-(instancetype)initWith:(NSString *)heading andDesc:(NSString *)desc{
  self = [super init];
  if (self) {
    self.heading = heading;
    self.desc = desc;
  }
  return self;
}

@end
