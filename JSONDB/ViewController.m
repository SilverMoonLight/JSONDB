//
//  ViewController.m
//  JSONDB
//
//  Created by John on 11/30/15.
//  Copyright © 2015 Jona. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

#define datagetUrl @"http://www.website.com"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.title = @"Cities of the world";
    
    [self retrieveData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _citiesArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
    }
    
    //cell.textLabel.text = [NSString stringWithFormat:@"Cell %d", indexPath.row];
    
    City * currentCity = [_citiesArray objectAtIndex:indexPath.row];
    
    cell.textLabel.text = currentCity.cityName;
    cell.detailTextLabel.text = currentCity.cityCountry;
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return  cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    DetailViewController * dvc = [[DetailViewController alloc] init];
    
    City * currentCity = [_citiesArray objectAtIndex:indexPath.row];
    dvc.name = currentCity.cityName;
    dvc.country = currentCity.cityCountry;
    dvc.population = currentCity.cityPopulation;
    
    [self.navigationController pushViewController:dvc animated:YES];
    
}

- (void) retrieveData {
    NSURL * url = [NSURL URLWithString:datagetUrl];
    NSData * data= [NSData dataWithContentsOfURL:url];
    
    _json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    
    _citiesArray = [[NSMutableArray alloc] init];
    
    for(int i=0; i< _json.count; i++) {
        NSString * cID = [[_json objectAtIndex:i] objectForKey:@"id"];
        NSString * cName = [[_json objectAtIndex:i] objectForKey:@"cityName"];
        NSString * cCountry = [[_json objectAtIndex:i] objectForKey:@"country"];
        NSString * cState = [[_json objectAtIndex:i] objectForKey:@"cityState"];
        NSString * cPopulaton = [[_json objectAtIndex:i] objectForKey:@"cityPopulation"];
        
        City * myCity = [[City alloc] initWithCityID:cID andCiyName:cName andCityState:cState andCityPopulation:cPopulaton andCityCountry:cCountry];
        
        [_citiesArray addObject:myCity];
    }
    
    [self.myTableView reloadData];
    
    
}

@end
