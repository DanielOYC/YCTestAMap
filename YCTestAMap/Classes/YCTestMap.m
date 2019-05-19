//
//  YCTestMap.m
//  YCTestAMap
//
//  Created by daniel on 2019/5/19.
//

#import "YCTestMap.h"
#import <MAMapKit/MAMapKit.h>
#import <AMapFoundationKit/AMapFoundationKit.h>

@implementation YCTestMap
    
+ (UIView *)mapView {
    
    
    ///地图需要v4.5.0及以上版本才必须要打开此选项（v4.5.0以下版本，需要手动配置info.plist）
    [AMapServices sharedServices].apiKey = @"ad0cd4bb4670a33d7bc4aeb46cbab8ef";

    [AMapServices sharedServices].enableHTTPS = YES;

    ///初始化地图
    MAMapView *_mapView = [[MAMapView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 200)];

    ///把地图添加至view
    return _mapView;

}

@end
