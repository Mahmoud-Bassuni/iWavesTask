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
    [self desginAndConfigVC];
    // Do any additional setup after loading the view.
}

- (void)desginAndConfigVC
{
    self.navigationItem.title = @"Kiosk Mode Setting";
    UIBarButtonItem *saveButton = [[UIBarButtonItem alloc]initWithTitle:@"Save" style:UIBarButtonItemStylePlain target:self action:nil];
    self.navigationItem.rightBarButtonItem = saveButton;
    self.dataPickerProp.dataSource = self;
    self.dataPickerProp.delegate = self;
    
}
- (IBAction)kioskModeAction:(id)sender {
    if(self.KioskView.isHidden == YES)
    self.KioskView.hidden = NO;
    else
    self.KioskView.hidden = YES;
}
- (IBAction)toogleCompanyDataAction:(id)sender {
    if(self.companyDataView.isHidden == YES)
        self.companyDataView.hidden = NO;
    else
        self.companyDataView.hidden = YES;
}
// The number of columns of data
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return _pickerData.count;
}
- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return _pickerData[row];
}
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    self.resultLblProp.text = _pickerData[row];
}


@end


