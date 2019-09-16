//
//  ViewController.m
//  iWavesTask
//
//  Created by Bassuni on 9/15/19.
//  Copyright © 2019 Bassuni. All rights reserved.
//

#import "Screen2VC.h"

@interface Screen2VC ()
{
    NSArray *_pickerData;
}

@end

@implementation Screen2VC

- (void)viewDidLoad {
    [super viewDidLoad];
    _pickerData = @[@"5 seconds", @"10 seconds", @"15 seconds",@"20 seconds", @"25 seconds", @"30 seconds"];
    self.navigationItem.title = @"Kiosk Mode Setting";
    UIBarButtonItem *saveButton = [[UIBarButtonItem alloc]initWithTitle:@"Save" style:UIBarButtonItemStylePlain target:self action:nil];
    self.navigationItem.rightBarButtonItem = saveButton;
    self.dataPickerProp.dataSource = self;
    self.dataPickerProp.delegate = self;
    // Do any additional setup after loading the view.
}


- (IBAction)kioskModeAction:(id)sender {
    if(self.KioskView.isHidden == YES)
    self.KioskView.hidden = NO;
    else
    self.KioskView.hidden = YES;
}

// The number of columns of data
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}
// The number of rows of data
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return _pickerData.count;
}
// The data to return for the row and component (column) that's being passed in
- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return _pickerData[row];
}
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    self.resultLbl.text = _pickerData[row];
}

@end
