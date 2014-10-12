//
//  PJRGestureRecognizers.h
//  Gesture Recognizers Demo
//
//  Created by Paritosh Raval on 11/10/14.
//  Copyright (c) 2014 paritosh. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PJRGestureRecognizers;
@protocol PJRGestureDelegate <NSObject>
@optional
-(void)handleSingleTapGesture:(UITapGestureRecognizer *)tapGestureRecognizer;
-(void)handleDoubleTapGesture:(UITapGestureRecognizer *)tapGestureRecognizer;

-(void)handleLongpressGesture:(UILongPressGestureRecognizer *)longpressGestureRecognizer;


- (void)slideToLeftGesture:(UISwipeGestureRecognizer *)swipeGestureRecognizer;
- (void)slideToRightGesture:(UISwipeGestureRecognizer *)swipeGestureRecognizer;
- (void)slideToUpGesture:(UISwipeGestureRecognizer *)swipeGestureRecognizer;
- (void)slideToDownGesture:(UISwipeGestureRecognizer *)swipeGestureRecognizer;

- (void)moveViewWithGesture:(UIPanGestureRecognizer *)panGestureRecognizer;

-(void)handlePinchGesture:(UIPinchGestureRecognizer *)pinchGestureRecognizer;

-(void)handleRotationGesture:(UIRotationGestureRecognizer *)rotationGestureRecognizer;




@end


@interface PJRGestureRecognizers : NSObject<UIGestureRecognizerDelegate>
{

}

@property (nonatomic, weak) id <PJRGestureDelegate> delegate;


- (void)addSingleTapGestureForView:(id)view;
- (void)addDoubleTapGestureForView:(id)view;

- (void)addLongpressGestureForView:(id)view;

- (void)addSwipeLeftGestureForView:(id)view;
- (void)addSwipeRightGestureForView:(id)view;
- (void)addSwipeUpGestureForView:(id)view;
- (void)addSwipeDownGestureForView:(id)view;

- (void)addPanGestureForView:(id)view;

- (void)addPinchGestureForView:(id)view;

- (void)addRotationGestureForView:(id)view;








@end
