//
//  ViewController.h
//  ollehMapTEST
//
//  Created by gyuchan jeon on 13. 3. 13..
//  Copyright (c) 2013년 gyuchan jeon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KMapView.h"


@interface MapViewController : UIViewController <KMapViewDelegate,OverlayDelegate> {
    KMapView *mapView;
}
@end
