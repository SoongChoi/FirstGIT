
/*
 *  PolygonOverlay.h
 *  KMapSDK
 *
 *  Created by Song Hyun Seob on 10. 07. 19.
 *  Copyright 2010 __MyCompanyName__. All rights reserved.
 *
 */

#import <UIKit/UIKit.h>
#import "VectorOverlay.h"
#import "CoordList.h"

/**
 * PolygonOverlay: Polygon Overlay class.
 */
@interface PolygonOverlay : VectorOverlay
{
	CoordList* coordList;
	CGColorRef fillColor;
}

/**
 * polygon의 Coord List.
 */
@property (nonatomic, retain) CoordList* coordList;

/**
 * PolygonOverlay의 fill color.
 */
@property (nonatomic) CGColorRef fillColor;

/**
 * PolygonOverlay의 초기화 함수.
 */
-(id)init; 

/**
 * PolygonOverlay를 coord list와 함께 초기화.
 * @param coordList :coord list
 */
-(id)initWithCoordList:(CoordList*)coordList; 

@end

