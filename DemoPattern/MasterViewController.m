//
//  MasterViewController.m
//  DemoPattern
//
//  Created by Nguyen Van Thanh on 4/7/13.
//  Copyright (c) 2013 Nguyen Van Thanh. All rights reserved.
//

#import "MasterViewController.h"
#import "DataManager.h"
#import "MasterViewCell.h"
#import "Food.h"
#import "DetailViewController.h"

@interface MasterViewController ()

@end

@implementation MasterViewController
{
    DataManager* data;
    NSMutableArray *_arrData;
    DetailViewController *_detail;
    
}
- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    data = [DataManager sharedManager];
    self.tableView.rowHeight = 78;
    NSPredicate* pre=[NSPredicate predicateWithFormat:@"groupId == %@",self.groupId];
    _arrData =(NSMutableArray*)[data.foodList filteredArrayUsingPredicate:pre];
    self.title = self.header;
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [_arrData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"MasterViewCell";
    
    MasterViewCell *cell = [[MasterViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    
    Food* food=[_arrData objectAtIndex:indexPath.row];
    cell.title.text = food.name;
    cell.photo.image=[UIImage imageNamed:food.photo];
    [cell.rating setRating:food.rate];
    //NSLog(@"%d",food.rate);
    return cell;
}

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 }
 else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    Food* food=[_arrData objectAtIndex:indexPath.row];
    _detail = [[DetailViewController alloc]initWithNibName:@"DetailViewController" bundle:nil];
    _detail.food = food;
    _detail.modalPresentationStyle = UIModalPresentationFormSheet;
    _detail.modalTransitionStyle =UIModalTransitionStyleCrossDissolve;
    [self presentViewController:_detail animated:YES completion:^{
        //
    }];
    // Navigation logic may go here. Create and push another view controller.
    /*
     ; *detailViewController = [[i alloc] initWithNibName:@";" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
