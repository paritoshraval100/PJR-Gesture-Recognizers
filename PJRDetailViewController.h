//
//  ExampleViewController.h
//  Gesture Recognizers Demo
//
//  Created by Paritosh Raval on 11/10/14.
//  Copyright (c) 2014 paritosh. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "PJRGestureRecognizers.h"

@interface PJRDetailViewController : UIViewController<PJRGestureDelegate>
{

}
@property (strong,nonatomic) IBOutlet UIView *demoView;
@property (strong,nonatomic) IBOutlet UILabel *infoLbl;
@property (assign,readwrite) NSInteger gesture;


@end
