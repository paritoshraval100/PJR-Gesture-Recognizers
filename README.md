PJR Gesture Recognizers
=====================

It is a Gesture Recognizers demo which contains use of different gestures on a view .I have create one common class called PJRGestureRecognizers which all the methods for gesture like touch,pan,swipe,long press,pinch.

So you can call this method by single line of code.

**How to Use.**

1) Download **PJRGestureRecognizers.h** and **PJRGestureRecognizers.m** file to your project.

2) Set **PJRGestureDelegate** in your view controller.

3) Create an object of PJRGestureRecognizers like

 	PJRGestureRecognizers *gesture = [[PJRGestureRecognizers alloc] init];

    	gesture.delegate = self;

4) Call methods like

	    [gesture addSingleTapGestureForView:_demoView];
            [gesture addDoubleTapGestureForView:_demoView];
            [gesture addLongpressGestureForView:_demoView];
            [gesture addSwipeLeftGestureForView:_demoView];
            [gesture addSwipeRightGestureForView:_demoView];
            [gesture addSwipeUpGestureForView:_demoView];
            [gesture addSwipeDownGestureForView:_demoView];
            [gesture addPanGestureForView:_demoView];
            [gesture addPinchGestureForView:_demoView];
            [gesture addRotationGestureForView:_demoView];


 
    
License
=====================
Paritosh Raval


