//
//  ViewController.h
//  iWavesTask
//
//  Created by Bassuni on 9/15/19.
//  Copyright © 2019 Bassuni. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Screen2VC : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>
- (IBAction)kioskModeAction:(id)sender;
@property (strong, nonatomic) IBOutlet UIView *KioskView;
@property (strong, nonatomic) IBOutlet UIPickerView *dataPickerProp;

@property (strong, nonatomic) IBOutlet UILabel *resultLblProp;
@property (strong, nonatomic) IBOutlet UIView *companyDataView;
- (IBAction)toogleCompanyDataAction:(id)sender;
@end

