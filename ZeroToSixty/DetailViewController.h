//
//  DetailViewController.h
//  ZeroToSixty
//
//  Created by Chad D Grice on 2013-09-07.
//  Copyright (c) 2013 Iris Dynamics Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *detailMaxSpeed;
@property (weak, nonatomic) IBOutlet UILabel *detail0toX;
@property (weak, nonatomic) IBOutlet UILabel *detailEighthMileTime;
@property (weak, nonatomic) IBOutlet UILabel *detailQuarterMileTime;
@end
