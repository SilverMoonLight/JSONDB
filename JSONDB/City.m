//
//  City.m
//  JSONDB
//
//  Created by John on 11/30/15.
//  Copyright © 2015 Jona. All rights reserved.
//

#import "City.h"

@implementation City

-(id) initWithCityID: (NSString *) cID andCiyName: (NSString *) cName andCityState: (NSString *) cState andCityPopulation: (NSString *) cPopulation andCityCountry: (NSString *) cCountry {
    
    self = [super init];
    if(self){
        _cityID = cID;
        _cityName = cName;
        _cityState = cState;
        _cityPopulation = cPopulation;
        _cityCountry = cCountry;
    }
    
    return self;
}




@end
