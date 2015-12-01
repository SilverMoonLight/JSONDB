//
//  DetailViewController.h
//  JSONDB
//
//  Created by John on 11/30/15.
//  Copyright © 2015 Jona. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSString * population;
@property (nonatomic, strong) NSString * country;


@property (strong, nonatomic) IBOutlet UILabel *cityName;

@property (strong, nonatomic) IBOutlet UILabel *cityPopulation;

@property (strong, nonatomic) IBOutlet UILabel *cityCountry;

@end
