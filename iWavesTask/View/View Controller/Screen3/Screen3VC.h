//
//  Screen3VC.h
//  iWavesTask
//
//  Created by Bassuni on 9/16/19.
//  Copyright © 2019 Bassuni. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Screen3VC : UIViewController<UITableViewDataSource,
UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableviewProp;
@property (strong, nonatomic)  NSMutableArray *tableviewData;
@end

NS_ASSUME_NONNULL_END
