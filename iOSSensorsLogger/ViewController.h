//
//  ViewController.h
//  iOSSensorsLogger
//
//  Created by Zhiping Jiang on 14-9-29.
//  Copyright (c) 2014年 Zhiping Jiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)logSwitch:(id)sender;
- (IBAction)accSwitch:(id)sender;
- (IBAction)gyroSwitch:(id)sender;
- (IBAction)magSwitch:(id)sender;
- (IBAction)deviceMotionSwitch:(id)sender;

- (IBAction)accSliding:(id)sender;
- (IBAction)gyroSliding:(id)sender;
- (IBAction)magSliding:(id)sender;
- (IBAction)attSliding:(id)sender;

@property (weak, nonatomic) IBOutlet UISlider *accSlider;
@property (weak, nonatomic) IBOutlet UISlider *gyroSlider;
@property (weak, nonatomic) IBOutlet UISlider *magSlider;
@property (weak, nonatomic) IBOutlet UISlider *attSlider;
@property (weak, nonatomic) IBOutlet UISwitch *accSwitcher;
@property (weak, nonatomic) IBOutlet UISwitch *gyroSwitcher;
@property (weak, nonatomic) IBOutlet UISwitch *magSwitcher;
@property (weak, nonatomic) IBOutlet UISwitch *deviceMotionSwitcher;






@property (weak, nonatomic) IBOutlet UILabel *accLabel;
@property (weak, nonatomic) IBOutlet UILabel *gyroLabel;
@property (weak, nonatomic) IBOutlet UILabel *magLabel;
@property (weak, nonatomic) IBOutlet UILabel *attLabel;


@end

