//
//  PJRGestureRecognizers.m
//  Gesture Recognizers Demo
//
//  Created by Paritosh Raval on 11/10/14.
//  Copyright (c) 2014 paritosh. All rights reserved.
//

#import "PJRGestureRecognizers.h"


@implementation PJRGestureRecognizers


#pragma mark - Single Tap Gesture
- (void)addSingleTapGestureForView:(id)view
{
    UITapGestureRecognizer *singleTapGesture = [[UITapGestureRecognizer alloc] init];
    if([_delegate respondsToSelector:@selector(handleSingleTapGesture:)]) {
        [singleTapGesture addTarget:_delegate action:@selector(handleSingleTapGesture:)];
    }
    [view addGestureRecognizer:singleTapGesture];
}

- (void)addDoubleTapGestureForView:(id)view
{
    UITapGestureRecognizer *doubleTapGesture = [[UITapGestureRecognizer alloc] init];
    doubleTapGesture.numberOfTapsRequired = 2;

    if([_delegate respondsToSelector:@selector(handleDoubleTapGesture:)]) {
        [doubleTapGesture addTarget:_delegate action:@selector(handleDoubleTapGesture:)];
    }
    [view addGestureRecognizer:doubleTapGesture];
}

#pragma mark - Long Press Gesture Recognizer

- (void)addLongpressGestureForView:(id)view
{

    UILongPressGestureRecognizer *longpressGesture = [[UILongPressGestureRecognizer alloc] init];
    longpressGesture.minimumPressDuration = 0.5;
    
    if([_delegate respondsToSelector:@selector(handleLongpressGesture:)]) {
        [longpressGesture addTarget:_delegate action:@selector(handleLongpressGesture:)];
    }

    [view addGestureRecognizer:longpressGesture];

}



#pragma mark - Swipe Gesture Recognizers

- (void)addSwipeLeftGestureForView:(id)view
{
    
    UISwipeGestureRecognizer *swipeLeft = [[UISwipeGestureRecognizer alloc] init];
    swipeLeft.direction = UISwipeGestureRecognizerDirectionLeft;

    if([_delegate respondsToSelector:@selector(slideToLeftGesture:)]) {
        [swipeLeft addTarget:_delegate action:@selector(slideToLeftGesture:)];
    }

    [view addGestureRecognizer:swipeLeft];
}
- (void)addSwipeRightGestureForView:(id)view
{
    
    UISwipeGestureRecognizer *swipeRight = [[UISwipeGestureRecognizer alloc] init];
    swipeRight.direction = UISwipeGestureRecognizerDirectionRight;
    
    if([_delegate respondsToSelector:@selector(slideToRightGesture:)]) {
        [swipeRight addTarget:_delegate action:@selector(slideToRightGesture:)];
    }
    
    [view addGestureRecognizer:swipeRight];
}
- (void)addSwipeUpGestureForView:(id)view
{
    
    UISwipeGestureRecognizer *swipeUp = [[UISwipeGestureRecognizer alloc] init];
    swipeUp.direction = UISwipeGestureRecognizerDirectionUp;
    
    if([_delegate respondsToSelector:@selector(slideToUpGesture:)]) {
        [swipeUp addTarget:_delegate action:@selector(slideToUpGesture:)];
    }
    
    [view addGestureRecognizer:swipeUp];
}
- (void)addSwipeDownGestureForView:(id)view
{
    
    UISwipeGestureRecognizer *swipeDown = [[UISwipeGestureRecognizer alloc] init];
    swipeDown.direction = UISwipeGestureRecognizerDirectionDown;
    
    if([_delegate respondsToSelector:@selector(slideToDownGesture:)]) {
        [swipeDown addTarget:_delegate action:@selector(slideToDownGesture:)];
    }
    
    [view addGestureRecognizer:swipeDown];
}

#pragma mark - Pan Gesture Recognizers

- (void)addPanGestureForView:(id)view
{
    
    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] init];
    if([_delegate respondsToSelector:@selector(moveViewWithGesture:)]) {
        [panGesture addTarget:_delegate action:@selector(moveViewWithGesture:)];
    }

    [view addGestureRecognizer:panGesture];
}

#pragma mark - Pinch Gesture Recognizers

- (void)addPinchGestureForView:(id)view
{
    UIPinchGestureRecognizer *pinchGesture = [[UIPinchGestureRecognizer alloc] init];
    if([_delegate respondsToSelector:@selector(handlePinchGesture:)]) {
        [pinchGesture addTarget:_delegate action:@selector(handlePinchGesture:)];
    }
    
    [view addGestureRecognizer:pinchGesture];

}

#pragma mark - Rotation Gesture Recognizers


- (void)addRotationGestureForView:(id)view
{
    UIRotationGestureRecognizer *rotationGesture= [[UIRotationGestureRecognizer alloc] init];
    
    if([_delegate respondsToSelector:@selector(handleRotationGesture:)]) {
        [rotationGesture addTarget:_delegate action:@selector(handleRotationGesture:)];
    }
    
    [view addGestureRecognizer:rotationGesture];

}






@end
