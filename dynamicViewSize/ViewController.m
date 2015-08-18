//
//  ViewController.m
//  dynamicViewSize
//
//  Created by Guilherme Caraciolo on 8/18/15.
//  Copyright (c) 2015 Guilherme Caraciolo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *viewContent;
@property (weak, nonatomic) IBOutlet UIView *subview;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constraintSubviewHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constraintSuperviewHeight;
@property (weak, nonatomic) IBOutlet UIStepper *stepper;

@property (nonatomic) double oldValue;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.oldValue = self.constraintSubviewHeight.constant;
    self.stepper.value = self.oldValue;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)stepperValueChanged:(UIStepper *)sender {
    double value = [sender value];
    if (self.oldValue < value) {
        [self increase];
    } else {
        [self decrease];
    }
    self.oldValue = value;
    NSLog(@"%f", value);
}

-(void)increase {
    NSLog(@"increase");
    [UIView animateWithDuration:0.2 animations:^{
        self.constraintSubviewHeight.constant += 10;
    }];

}

-(void)decrease {
    NSLog(@"decrease");
    [UIView animateWithDuration:0.2 animations:^{
        self.constraintSubviewHeight.constant -= 10;
    }];
}

@end
