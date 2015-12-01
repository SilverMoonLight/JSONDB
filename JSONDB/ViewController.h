//
//  ViewController.h
//  JSONDB
//
//  Created by John on 11/30/15.
//  Copyright © 2015 Jona. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "City.h"
#import "DetailViewController.h"

@interface ViewController : UIViewController
<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSMutableArray * json;
@property (nonatomic, strong) NSMutableArray * citiesArray;

@property (strong, nonatomic) IBOutlet UITableView *myTableView;


- (void) retrieveData;
@end

