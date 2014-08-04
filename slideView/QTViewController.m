//
//  QTViewController.m
//  slideView
//
//  Created by Ravindra Kishan on 31/07/14.
//  Copyright (c) 2014 Ravindra Kishan. All rights reserved.
//

#import "QTViewController.h"
#import "QTMainViewController.h"
#import "QTListViewController.h"
@interface QTViewController ()

@end

@implementation QTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.navigationController.navigationBarHidden = YES;
    
   mainView = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"QTMainViewController"];
    [mainView setHomeViewController:self];
    [self.view addSubview:mainView.view];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)animateRight
{
    isInitialView=YES;
    if (listView)
    {
        [listView.view removeFromSuperview];
        listView = nil;
    }
    listView = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"QTListViewController"];
    [listView setHomeViewController:self];
    [self.listView addSubview:listView.view];
    listView.view.alpha = 0;
    [UIView animateWithDuration:0.5
                     animations:^{
                         mainView.view.frame = CGRectMake(mainView.view.frame.origin.x+100, mainView.view.frame.origin.y, mainView.view.frame.size.width, mainView.view.frame.size.height);
                         listView.view.alpha = 1;
                     }];
    
    mainView.view.userInteractionEnabled = YES;
    
}

-(void)animateLeft
{
    
    isInitialView = NO;
    [UIView animateWithDuration:0.5
                     animations:^{
                         mainView.view.frame = CGRectMake(mainView.view.frame.origin.x-100, mainView.view.frame.origin.y, mainView.view.frame.size.width, mainView.view.frame.size.height);
                         listView.view.alpha = 0;
                         
                     }];
}

@end
