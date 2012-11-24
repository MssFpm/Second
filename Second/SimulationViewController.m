//
//  SimulationViewController.m
//  Second
//
//  Created by Pavel Astraukh on 17.11.12.
//  Copyright (c) 2012 Pavel Astraukh. All rights reserved.
//

#import "SimulationViewController.h"
#import "Hedgehog.h"
@interface SimulationViewController ()

@end

@implementation SimulationViewController

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
    NSLog(@"HERE1");
    id appDelegate = [[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = [appDelegate managedObjectContext];
    Hedgehog *firstObject;
    NSEntityDescription *entityDescription =[NSEntityDescription entityForName:@"Hedgehog" inManagedObjectContext:context];
    Hedgehog *secondObject = [[Hedgehog alloc] initWithEntity:entityDescription insertIntoManagedObjectContext:context];
    [secondObject subscribeForNotifications];
    NSError *error;
    firstObject = [NSEntityDescription insertNewObjectForEntityForName:@"Hedgehog" inManagedObjectContext:context];
//    [firstObject setValue:@12 forKey:@"age"];
//    [firstObject setValue:@32 forKey:@"speed"];
//    [secondObject setValue:@1 forKey:@"age"];
//    [secondObject setValue:@3 forKey:@"speed"];
//
//    [context save:&error];
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    [request setEntity:entityDescription];
    NSArray *objects = [context executeFetchRequest:request error:&error];
    for(int i = 0; i < objects.count; i++) {
        NSLog(@"ARRAY ---->%@", [[objects objectAtIndex:i] valueForKey:@"age"]);
    }
    [[NSNotificationCenter defaultCenter] postNotificationName:@"AppleFall" object:self];
     [[NSNotificationCenter defaultCenter] postNotificationName:@"AppleFall" object:self];
     [self.view setNeedsDisplay];
  
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
