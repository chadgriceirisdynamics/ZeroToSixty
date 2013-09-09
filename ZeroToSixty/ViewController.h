//
//  ViewController.h
//  0to60
//
//  Created by Chad D Grice on 2013-08-26.
//  Copyright (c) 2013 Iris Dynamics Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <CoreData/CoreData.h>

int mainInt;

NSTimer *countUpTimer;
NSDate *start;
NSDate *xStop;
NSDate *eightStop;
NSDate *qtrStop;
double maxspeed;
double currentspeed;
int speedCurrent;
int systemIsArmed;
int startPosition;
int eightArmed;
int qrtArmed;
double x1;
double y11;
double x2;
double y2;
double distanceInFeet;
int accuracyCheck;


@interface ViewController : UIViewController<CLLocationManagerDelegate, NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) IBOutlet UIImageView *backGroundImage;

@property (strong, nonatomic) IBOutlet UILabel *currentSpeed;

@property (strong, nonatomic) IBOutlet UILabel *maxSpeed;

@property (strong, nonatomic) IBOutlet UILabel *elapsedTime;

@property (strong, nonatomic) IBOutlet UILabel *toXTime;

@property (strong, nonatomic) IBOutlet UILabel *qtrTime;

@property (strong, nonatomic) IBOutlet UILabel *eightTime;

@property (strong, nonatomic) IBOutlet UIButton *startBtn;

- (IBAction)start:(id)sender;

- (IBAction)stopTest:(id)sender;

@property (strong, nonatomic) IBOutlet UIButton *saveRunBtn;

- (IBAction)saveRun:(id)sender;

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;


@end

