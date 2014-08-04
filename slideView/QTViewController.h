//
//  QTViewController.h
//  slideView
//
//  Created by Ravindra Kishan on 31/07/14.
//  Copyright (c) 2014 Ravindra Kishan. All rights reserved.
//

#import <UIKit/UIKit.h>

@class QTMainViewController;
@class QTListViewController;

@interface QTViewController : UIViewController
{
    QTMainViewController      *mainView;
    QTListViewController      *listView;
    BOOL isInitialView;
}
@property (strong, nonatomic) IBOutlet UIView *listView;

-(void) animateLeft;
-(void) animateRight;
@end
