//
//  ViewController.m
//  Catalog
//
//  Created by iOS Camp on 8/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "Book.h"
#import "CD.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize itemsTableView;
@synthesize items = _items;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.items = [NSMutableArray array];
    

    
    [self.items addObject:[Book bookWithTitle:@"Objective-C" author:@"John" price:1.99 identificationNumber:100]];
    
}

- (void)viewDidUnload
{
    [self setItemsTableView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

//Required methods for UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.items.count;
}

- (UITableViewCell *)
tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ItemCell"];
    
    Book *bookInstance = [self.items objectAtIndex:indexPath.row];
    
    cell.textLabel.text = bookInstance.title;
    
    return cell;
}
@end
