//
//  ViewController.m
//  OpenDataDay
//
//  Created by Carlos Castellanos on 04/03/16.
//  Copyright © 2016 Carlos Castellanos. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()


@end

@implementation ViewController
{

MKMapView *map;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self createMap];
    
    CLLocationCoordinate2D pinCoordinate;
    pinCoordinate.latitude = 19.234;
    pinCoordinate.longitude = -99.324;
    
    
    MKPointAnnotation *point = [[MKPointAnnotation alloc] init];
    point.coordinate = pinCoordinate;
    point.title = @"Where am I?";
    point.subtitle = @"I'm here!!!";
    
    [map addAnnotation:point];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)createMap{
    map=[[MKMapView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    map.delegate=self;
    
    [self.view addSubview:map];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
