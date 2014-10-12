//
//  PJRGestureListViewController.m
//  Gesture Recognizers Demo
//
//  Created by Paritosh Raval on 12/10/14.
//  Copyright (c) 2014 paritosh. All rights reserved.
//

#import "PJRGestureListViewController.h"
#import "PJRDetailViewController.h"

@interface PJRGestureListViewController ()

@end

@implementation PJRGestureListViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    _listArray = [[NSMutableArray alloc] initWithObjects:@"Tap Gesture",@"Long Press Gesture",@"Swipe Gesture",@"Pan Gesture",@"Pinch and Rotation Gesture", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableView Data source methods


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return _listArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        
    }
    
    // Configure the cell...
    
    cell.textLabel.text = [_listArray objectAtIndex:indexPath.row];
    
    return cell;
}



#pragma mark - UITableView Delegate Methods

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    PJRDetailViewController *detailController = [[PJRDetailViewController alloc] initWithNibName:@"PJRDetailViewController" bundle:nil];
    detailController.gesture = indexPath.row;
    [self.navigationController pushViewController:detailController animated:YES];
}


@end
