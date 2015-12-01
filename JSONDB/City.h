//
//  City.h
//  JSONDB
//
//  Created by John on 11/30/15.
//  Copyright © 2015 Jona. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject
@property(nonatomic, strong) NSString * cityName;
@property(nonatomic, strong) NSString * cityID;
@property(nonatomic, strong) NSString * cityState;
@property(nonatomic, strong) NSString * cityPopulation;
@property(nonatomic, strong) NSString * cityCountry;

-(id) initWithCityID: (NSString *) cID andCiyName: (NSString *) cName andCityState: (NSString *) cState andCityPopulation: (NSString *) cPopulation andCityCountry: (NSString *) cCountry;


@end
