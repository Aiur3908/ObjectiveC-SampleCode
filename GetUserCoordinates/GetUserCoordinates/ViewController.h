//
//  ViewController.h
//  GetUserCoordinates
//
//  Created by esobi on 2016/8/18.
//  Copyright © 2016年 aiur. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController<CLLocationManagerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *latitudeLabel;
@property (weak, nonatomic) IBOutlet UILabel *longitudeLabel;
@property (nonatomic, strong) CLLocationManager *locationManager;
@end


