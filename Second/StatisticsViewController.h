//
//  StatisticsViewController.h
//  Second
//
//  Created by Pavel Astraukh on 17.11.12.
//  Copyright (c) 2012 Pavel Astraukh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StatisticsViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property (retain, nonatomic) IBOutlet UITableView *statisticsTable;
@property (retain, nonatomic) IBOutlet UISegmentedControl *segmentControl;
@property (assign) NSInteger selectedSegment;
- (IBAction)changeStatisticsType:(id)sender;

@end
