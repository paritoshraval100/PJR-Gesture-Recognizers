//
//  ExampleViewController.m
//  Gesture Recognizers Demo
//
//  Created by Paritosh Raval on 11/10/14.
//  Copyright (c) 2014 paritosh. All rights reserved.
//

#import "PJRDetailViewController.h"
#import "PJRGestureRecognizers.h"

@interface PJRDetailViewController ()

@end

@implementation PJRDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self addGesture:_gesture];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)addGesture:(NSInteger)gestureValue
{
    PJRGestureRecognizers *gesture = [[PJRGestureRecognizers alloc] init];
    gesture.delegate = self;


    switch (gestureValue) {
        case 0:{
            [gesture addSingleTapGestureForView:_demoView];
            [gesture addDoubleTapGestureForView:_demoView];
            break;
        }
        case 1:{
            [gesture addLongpressGestureForView:_demoView];
            break;
        }
        case 2:{
            [gesture addSwipeLeftGestureForView:_demoView];
            [gesture addSwipeRightGestureForView:_demoView];
            [gesture addSwipeUpGestureForView:_demoView];
            [gesture addSwipeDownGestureForView:_demoView];

            break;
        }
        case 3:{
            [gesture addPanGestureForView:_demoView];
            break;
        }
        case 4:{
            [gesture addPinchGestureForView:_demoView];
            [gesture addRotationGestureForView:_demoView];
            break;
        }
            
            
        default:
            break;
    }
}

#pragma mark - Gesture Delegate Methods

- (void)handleSingleTapGesture:(UITapGestureRecognizer *)tapGestureRecognizer
{
    tapGestureRecognizer.view.backgroundColor = [UIColor redColor];
    _infoLbl.text = @"Single Tap";
}
- (void)handleDoubleTapGesture:(UITapGestureRecognizer *)tapGestureRecognizer
{
    tapGestureRecognizer.view.backgroundColor = [UIColor yellowColor];
    _infoLbl.text = @"Double Tap";

}
- (void)handleLongpressGesture:(UILongPressGestureRecognizer *)longpressGestureRecognizer
{
    longpressGestureRecognizer.view.backgroundColor = [UIColor purpleColor];
    _infoLbl.text = @"Long Press";

}

- (void)slideToLeftGesture:(UISwipeGestureRecognizer *)swipeGestureRecognizer
{
    swipeGestureRecognizer.view.backgroundColor = [UIColor greenColor];
    _infoLbl.text = @"Swipe Left";

}
- (void)slideToRightGesture:(UISwipeGestureRecognizer *)swipeGestureRecognizer
{
    swipeGestureRecognizer.view.backgroundColor = [UIColor grayColor];
    _infoLbl.text = @"Swipe Right";

}
- (void)slideToUpGesture:(UISwipeGestureRecognizer *)swipeGestureRecognizer
{
    swipeGestureRecognizer.view.backgroundColor = [UIColor yellowColor];
    _infoLbl.text = @"Swipe Up";

}
- (void)slideToDownGesture:(UISwipeGestureRecognizer *)swipeGestureRecognizer
{
    swipeGestureRecognizer.view.backgroundColor = [UIColor orangeColor];
    _infoLbl.text = @"Swipe Down";

}

- (void)moveViewWithGesture:(UIPanGestureRecognizer *)panGestureRecognizer
{
    CGPoint touchLocation = [panGestureRecognizer locationInView:self.view];

    _demoView.center = touchLocation;
    _infoLbl.text = @"Pan";
    panGestureRecognizer.view.backgroundColor = [UIColor blueColor];

    


}

-(void)handlePinchGesture:(UIPinchGestureRecognizer *)pinchGestureRecognizer
{
    _demoView.transform = CGAffineTransformScale(_demoView.transform, pinchGestureRecognizer.scale, pinchGestureRecognizer.scale);
    pinchGestureRecognizer.scale = 1.0;
    _infoLbl.text = @"Pinch";
    pinchGestureRecognizer.view.backgroundColor = [UIColor redColor];

}

-(void)handleRotationGesture:(UIRotationGestureRecognizer *)rotationGestureRecognizer
{
    rotationGestureRecognizer.rotation = 0.0;
    _infoLbl.text = @"Rotation";
    rotationGestureRecognizer.view.backgroundColor = [UIColor lightGrayColor];

}





@end
