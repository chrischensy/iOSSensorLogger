//
//  ViewController.m
//  iOSSensorsLogger
//
//  Created by Zhiping Jiang on 14-9-29.
//  Copyright (c) 2014年 Zhiping Jiang. All rights reserved.
//

#import "ViewController.h"
#import "SensorLogger.h"

@interface ViewController ()

@end

@implementation ViewController

- (NSUInteger) supportedInterfaceOrientations {
    
    return UIInterfaceOrientationMaskPortrait;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    SensorLogger * instance = [SensorLogger getInstance];
    self.accSlider.enabled = instance.rawAccEnable;
    self.gyroSlider.enabled = instance.rawGyroEnable;
    self.magSlider.enabled = instance.rawMagEnable;
    self.attSlider.enabled = instance.deviceMotionEnable;
    
    self.accSwitcher.on =   instance.rawAccEnable;
    self.gyroSwitcher.on = instance.rawGyroEnable;
    self.magSwitcher.on = instance.rawMagEnable;
    self.deviceMotionSwitcher.on = instance.deviceMotionEnable;
    
    self.accSlider.value = instance.accSamplingRate;
    self.gyroSlider.value = instance.gyroSamplingRate;
    self.magSlider.value = instance.magSamplingRate;
    self.attSlider.value = instance.deviceMotionSamplingRate;
    
    self.accLabel.text = [NSString stringWithFormat:@"%f",self.accSlider.value];
    self.gyroLabel.text = [NSString stringWithFormat:@"%f",self.gyroSlider.value];
    self.magLabel.text = [NSString stringWithFormat:@"%f",self.magSlider.value];
    self.attLabel.text = [NSString stringWithFormat:@"%f",self.attSlider.value];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)accSwitch:(id)sender {
    UISwitch * switcher = sender;
    SensorLogger * instance = [SensorLogger getInstance];
    if (switcher.isOn) {
        instance.rawAccEnable = YES;
        self.accSlider.enabled = YES;
    } else {
        instance.rawAccEnable = NO;
        self.accSlider.enabled = NO;
    }
}

- (IBAction)gyroSwitch:(id)sender {
    UISwitch * switcher = sender;
    SensorLogger * instance = [SensorLogger getInstance];
    if (switcher.isOn) {
        instance.rawGyroEnable = YES;
        self.gyroSlider.enabled = YES;
    } else {
        instance.rawGyroEnable = NO;
        self.gyroSlider.enabled = NO;
    }
}

- (IBAction)magSwitch:(id)sender {
    UISwitch * switcher = sender;
    SensorLogger * instance = [SensorLogger getInstance];
    if (switcher.isOn) {
        instance.rawMagEnable = YES;
        self.magSlider.enabled = YES;
    } else {
        instance.rawMagEnable = NO;
        self.magSlider.enabled = NO;
    }
}

- (IBAction)deviceMotionSwitch:(id)sender {
    UISwitch * switcher = sender;
    SensorLogger * instance = [SensorLogger getInstance];
    if (switcher.isOn) {
        instance.deviceMotionEnable = YES;
        self.attSlider.enabled = YES;
    } else {
        instance.deviceMotionEnable = NO;
        self.attSlider.enabled = NO;
    }
}


- (IBAction)accSliding:(id) sender {
    [[SensorLogger getInstance] setSamlingRateToAcc:self.accSlider.value toGyro:self.gyroSlider.value toMag:self.magSlider.value toAtt:self.attSlider.value];
    self.accLabel.text = [NSString stringWithFormat:@"%f",self.accSlider.value];
}


- (IBAction)gyroSliding:(id)sender {
    [[SensorLogger getInstance] setSamlingRateToAcc:self.accSlider.value toGyro:self.gyroSlider.value toMag:self.magSlider.value toAtt:self.attSlider.value];
    self.gyroLabel.text = [NSString stringWithFormat:@"%f",self.gyroSlider.value];
}

- (IBAction)magSliding:(id)sender {
    [[SensorLogger getInstance] setSamlingRateToAcc:self.accSlider.value toGyro:self.gyroSlider.value toMag:self.magSlider.value toAtt:self.attSlider.value];
    self.magLabel.text = [NSString stringWithFormat:@"%f",self.magSlider.value];
}


- (IBAction)attSliding:(id)sender {
    [[SensorLogger getInstance] setSamlingRateToAcc:self.accSlider.value toGyro:self.gyroSlider.value toMag:self.magSlider.value toAtt:self.attSlider.value];
    self.attLabel.text = [NSString stringWithFormat:@"%f",self.attSlider.value];
}


- (IBAction)logSwitch:(id)sender {
    UISwitch * switcher = sender;
    if (switcher.isOn) {
        [[SensorLogger getInstance] startLogging];
        
    } else {
        [[SensorLogger getInstance] stopLogging];
        [[SensorLogger getInstance] writeToFile:@"sensor"];
    }
}


@end
