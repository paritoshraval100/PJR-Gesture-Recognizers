//
//  PJRGestureListViewController.h
//  Gesture Recognizers Demo
//
//  Created by Paritosh Raval on 12/10/14.
//  Copyright (c) 2014 paritosh. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface PJRGestureListViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
{

}

@property (nonatomic,strong) NSMutableArray *listArray;
@end
