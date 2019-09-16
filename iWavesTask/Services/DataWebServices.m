//
//  DataWebServices.m
//  iWavesTask
//
//  Created by Bassuni on 9/16/19.
//  Copyright © 2019 Bassuni. All rights reserved.
//

#import "DataWebServices.h"

@implementation DataWebServices

+(void)getDataFromWebService:(void (^)(NSMutableArray* result))success
{

    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    [request setHTTPMethod:@"GET"];
    [request setURL:[NSURL URLWithString:@"https://www.badgescannerapp.com/leadslightning/Common/AttendeesReports/freeJson.aspx?event=123456789&authKey=123456789&rawdata=Carl%7CBaranski"]];
    NSError *error = nil;
    NSHTTPURLResponse *responseCode = nil;
    NSData *oResponseData = [NSURLConnection sendSynchronousRequest:request returningResponse:&responseCode error:&error];
    id json = [NSJSONSerialization JSONObjectWithData:oResponseData options:0 error:nil];
    NSMutableArray *empData = [[NSMutableArray alloc] init];
    if(json[@"First Name"] != nil) {[empData addObject:json[@"First Name"]];}
    if(json[@"Last Name"] != nil) {[empData addObject:json[@"Last Name"]];}
    if(json[@"Company"] != nil) {[empData addObject:json[@"Company"]];}
    if(json[@"Title"] != nil) {[empData addObject:json[@"Title"]];}
    if(json[@"Address 1"] != nil) {[empData addObject:json[@"Address 1"]];}
    if(json[@"City"] != nil) {[empData addObject:json[@"City"]];}
    if(json[@"Zip"] != nil) {[empData addObject:json[@"Zip"]];}
    if(json[@"Email"] != nil) {[empData addObject:json[@"Email"]];}
    if(json[@"Phone"] != nil) {[empData addObject:json[@"Phone"]];}
    if(json[@"Fax"] != nil) {[empData addObject:json[@"Fax"]];}
    if(json[@"Card #"] != nil) {[empData addObject:json[@"Card #"]];}
    if(json[@"Attending As"] != nil) {[empData addObject:json[@"Attending As"]];}
    if(json[@"Company Gross Sales"] != nil) {[empData addObject:json[@"Company Gross Sales"]];}
    success(empData);
}

@end
