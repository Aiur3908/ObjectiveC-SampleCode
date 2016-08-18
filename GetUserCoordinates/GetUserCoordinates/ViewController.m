//
//  ViewController.m
//  GetUserCoordinates
//
//  Created by esobi on 2016/8/18.
//  Copyright © 2016年 aiur. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //初始化
    self.locationManager = [[CLLocationManager alloc]init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)getUserCoordinates:(id)sender {
    ////發出請求告知使用者永久使用使用者當前位置
    //[self.locationManager requestAlwaysAuthorization];
    //發出請求告知使用者開啟App時，取用使用者當前位置
    [self.locationManager requestWhenInUseAuthorization];
    //設定delegate
    self.locationManager.delegate = self;
    //開始更新使用者當前位置
    [self.locationManager startUpdatingLocation];
}

#pragma mark CLLocationManagerDelegate

-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations{
    //取得當前位置
    CLLocation *currentLocation = [locations lastObject];
    if(currentLocation != nil){
        self.latitudeLabel.text = [NSString stringWithFormat:@"%.2f",currentLocation.coordinate.latitude];
        self.longitudeLabel.text = [NSString stringWithFormat:@"%.2f",currentLocation.coordinate.longitude];
        //停止偵測
        [self.locationManager stopUpdatingLocation];
    }
}

@end
