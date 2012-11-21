//
//  StatisticsViewController.m
//  Second
//
//  Created by Pavel Astraukh on 17.11.12.
//  Copyright (c) 2012 Pavel Astraukh. All rights reserved.
//

#import "StatisticsViewController.h"

@interface StatisticsViewController ()

@end

@implementation StatisticsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.selectedSegment = 0;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}



// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *currentCell = [[UITableViewCell alloc] init ];
    if (self.selectedSegment == 0) {
        
        [currentCell.textLabel setText:@"hi"];
    
    }else {
        [currentCell.textLabel setText:@"SAD"];
        
    }
    return  currentCell;
}

- (void)delloc {
    [_statisticsTable release];
    [_segmentControl release];
    [super dealloc];
}
- (IBAction)changeStatisticsType:(id)sender {
    NSLog(@"VALUE %d", self.segmentControl.selectedSegmentIndex);
    self.selectedSegment = self.segmentControl.selectedSegmentIndex;
    [self.statisticsTable reloadData];
}
@end
