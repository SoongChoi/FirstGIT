//
//  ViewController.m
//  ollehMapTEST
//
//  Created by gyuchan jeon on 13. 3. 13..
//  Copyright (c) 2013년 gyuchan jeon. All rights reserved.
//

#import "MapViewController.h"
#import "HHTabListController.h"
#import "KMapView.h"

@interface MapViewController ()

@end

@implementation MapViewController

- (void)viewWillAppear:(BOOL)animated
{
	[super viewWillAppear:animated];
	
	if ([self isMovingToParentViewController]) {
		HHTabListController *tabListController = [self tabListController];
		UIBarButtonItem *leftBarButtonItem = tabListController.revealTabListBarButtonItem;
		
		self.navigationItem.leftBarButtonItem = leftBarButtonItem;
	}
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    mapView = [[KMapView alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    mapView.delegate = self;
    [mapView startMapService:@"8100D6CF" UserKey:@"TBFFA463318A46"];
    
    [mapView setZoomLevel:11];
    [mapView setMapType:KMapTypeStandard];

    [mapView setCenterCoordinate:CoordMake(949118.568, 1950999.45)];
    
    //핀 설정하기
    MarkerOverlay* overlay = [[MarkerOverlay alloc] initWithType:0];
    overlay.coord = mapView.centerCoordinate;
    overlay.delegate = self;
    overlay.title = @"모두 친구가 되는 곳. 홍대";
    overlay.canShowBalloon = YES;
    
    // MarkerOverlay 추가
    [mapView addOverlay:overlay];
    [self.view addSubview:mapView];
    NSLog(@"check: %d", [mapView checkStartMapService]);
}

- (void)mapTouchBegan:(KMapView*)_mapView Events:(UIEvent*)event
{
//  - mapView :대상 지도.
//	- event :event 정보.
    printf("mapTouchBegan\n");
}
- (void)mapTouchEnded:(KMapView*)_mapView Events:(UIEvent*)event
{
//  - mapView :대상 지도.
//	- event :event 정보.
    printf("mapTouchEnded\n");
}
- (void)mapTouchMoved:(KMapView*)_mapView Events:(UIEvent*)event
{
//  - mapView :대상 지도.
//	- event :event 정보.
    printf("mapTouchMoved\n");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
