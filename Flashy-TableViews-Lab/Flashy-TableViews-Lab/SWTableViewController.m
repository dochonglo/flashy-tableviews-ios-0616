//
//  SWTableViewController.m
//  Flashy-TableViews-Lab
//
//  Created by Ismael Barry on 7/1/16.
//  Copyright © 2016 Ismael Barry. All rights reserved.
//

#import "SWTableViewController.h"
#import "SWMyCustomTableViewCell.h"
#import "UIScrollView+APParallaxHeader.h"
//#import "SWUtilityButtonView.h"

@interface SWTableViewController ()

@end

@implementation SWTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView addParallaxWithImage:[UIImage imageNamed:@"coverimage.png"] andHeight:160];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    SWTableViewCell *cell = (SWTableViewCell*)[tableView dequeueReusableCellWithIdentifier:@"fancyCell"];
    
    
    // Configure the cell...
    cell = [[SWTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"fancyCell"];
    cell.leftUtilityButtons = [self leftButtons];
    cell.rightUtilityButtons = [self rightButtons];

    cell.textLabel.text = @"These are some super fancy table view cells! :P";
    
    return cell;
}

- (NSArray *)rightButtons {
    
    NSMutableArray *rightUtilityButtons = [NSMutableArray new];
    
    [rightUtilityButtons sw_addUtilityButtonWithColor:[UIColor colorWithRed:0.78f green:0.78f blue:0.8f alpha:1.0f] title:@"More"];
    
    [rightUtilityButtons sw_addUtilityButtonWithColor:[UIColor colorWithRed:1.0f green:0.231f blue:0.231f alpha:1.0f] title:@"Delete"];
    
    return rightUtilityButtons;
}

- (NSArray *)leftButtons {
    
    NSMutableArray *leftUtilityButtons = [[NSMutableArray alloc] init];
    
    [leftUtilityButtons sw_addUtilityButtonWithColor:[UIColor colorWithRed:222/255.0 green:171/255.0 blue:66/255.0 alpha:1.0] title:@"Add"];
    
    [leftUtilityButtons sw_addUtilityButtonWithColor:[UIColor colorWithRed:223/255.0 green:86/255.0 blue:94/255.0 alpha:1.0] title:@"Edit"];
    
    [leftUtilityButtons sw_addUtilityButtonWithColor:[UIColor colorWithRed:239/255.0 green:130/255.0 blue:100/255.0 alpha:1.0] title:@"Play"];
    
    [leftUtilityButtons sw_addUtilityButtonWithColor:[UIColor colorWithRed:77/255.0 green:75/255.0 blue:82/255.0 alpha:1.0] title:@"Stop"];
    
    return leftUtilityButtons;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
