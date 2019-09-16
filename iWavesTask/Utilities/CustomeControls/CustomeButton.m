//
//  CustomeButton.m
//  iWavesTask
//
//  Created by Bassuni on 9/16/19.
//  Copyright © 2019 Bassuni. All rights reserved.
//

#import "CustomeButton.h"

@implementation CustomeButton

- (void)awakeFromNib
{
    [super awakeFromNib];
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = 5;
    self.clipsToBounds = true;
    self.layer.borderWidth = 1;

}
@end
