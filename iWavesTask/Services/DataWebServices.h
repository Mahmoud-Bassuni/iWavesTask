//
//  DataWebServices.h
//  iWavesTask
//
//  Created by Bassuni on 9/16/19.
//  Copyright © 2019 Bassuni. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataWebServices : NSObject
+(void)getDataFromWebService:(void (^)(NSMutableArray* result))success;
@end


