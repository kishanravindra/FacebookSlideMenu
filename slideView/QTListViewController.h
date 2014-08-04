//
//  QTListViewController.h
//  slideView
//
//  Created by Ravindra Kishan on 31/07/14.
//  Copyright (c) 2014 Ravindra Kishan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QTViewController.h"

@interface QTListViewController : UIViewController
{
    QTViewController *view;
}
-(void)setHomeViewController:(QTViewController*)vc;


@end
