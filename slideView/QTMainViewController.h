//
//  QTMainViewController.h
//  slideView
//
//  Created by Ravindra Kishan on 31/07/14.
//  Copyright (c) 2014 Ravindra Kishan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QTViewController.h"
@interface QTMainViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
{
    BOOL movedRight;
    QTViewController * view;
}

- (IBAction)menuBtnTapped:(id)sender;
-(void)setHomeViewController:(QTViewController*)vc;

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end
