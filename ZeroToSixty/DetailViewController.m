//
//  DetailViewController.m
//  ZeroToSixty
//
//  Created by Chad D Grice on 2013-09-07.
//  Copyright (c) 2013 Iris Dynamics Ltd. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@property (strong, nonatomic) UIPopoverController *masterPopoverController;
- (void)configureView;
@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }

    if (self.masterPopoverController != nil) {
        [self.masterPopoverController dismissPopoverAnimated:YES];
    }        
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailDescriptionLabel.text = [[self.detailItem valueForKey:@"timeStamp"] description];
        self.detailMaxSpeed.text = [[self.detailItem valueForKey:@"maxSpeedSaved"] description];
        self.detail0toX.text = [[self.detailItem valueForKey:@"to60TimeSaved"] description];
        self.detailEighthMileTime.text = [[self.detailItem valueForKey:@"eighthSaved"] description];
        self.detailQuarterMileTime.text = [[self.detailItem valueForKey:@"QuarterSaved"] description];

        
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [_detailMaxSpeed setFont:[UIFont fontWithName:@"Digital Dream Fat Narrow" size:30]];
    [_detail0toX setFont:[UIFont fontWithName:@"Digital Dream Fat Narrow" size:30]];
    [_detailEighthMileTime setFont:[UIFont fontWithName:@"Digital Dream Fat Narrow" size:30]];
    [_detailQuarterMileTime setFont:[UIFont fontWithName:@"Digital Dream Fat Narrow" size:30]];

    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Split view

- (void)splitViewController:(UISplitViewController *)splitController willHideViewController:(UIViewController *)viewController withBarButtonItem:(UIBarButtonItem *)barButtonItem forPopoverController:(UIPopoverController *)popoverController
{
    barButtonItem.title = NSLocalizedString(@"Master", @"Master");
    [self.navigationItem setLeftBarButtonItem:barButtonItem animated:YES];
    self.masterPopoverController = popoverController;
}

- (void)splitViewController:(UISplitViewController *)splitController willShowViewController:(UIViewController *)viewController invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem
{
    // Called when the view is shown again in the split view, invalidating the button and popover controller.
    [self.navigationItem setLeftBarButtonItem:nil animated:YES];
    self.masterPopoverController = nil;
}

@end
