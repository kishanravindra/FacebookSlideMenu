//
//  QTMainViewController.m
//  slideView
//
//  Created by Ravindra Kishan on 31/07/14.
//  Copyright (c) 2014 Ravindra Kishan. All rights reserved.
//

#import "QTMainViewController.h"
#import "QTTableViewCell.h"
#import "RoundedImageView.h"
@interface QTMainViewController ()

@end

@implementation QTMainViewController

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
    // Do any additional setup after loading the view.
    [self.tableView setDataSource:self];
    [self.tableView setDelegate:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)menuBtnTapped:(id)sender
{
    if (movedRight == NO)
    {
        [view animateRight];
        movedRight = YES;
    }
    else
    {
        [view animateLeft];
        movedRight = NO;
    }
}

-(void)setHomeViewController:(QTViewController*)vc
{
    view = vc;
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    QTTableViewCell* cell = [self.tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    RoundedImageView *profileImageView = [[RoundedImageView alloc] initWithFrame:CGRectMake(13,10,73, 70)];
    
    //Configring the rounded imageview by setting appropriate image and offset.
    profileImageView.imageOffset = 2.5;
    profileImageView.image = [UIImage imageNamed:@"highres_167240072.jpeg"];
    profileImageView.backgroundImage = [UIImage imageNamed:@"dp_holder_large.png"];
    cell.backgroundColor=[UIColor colorWithRed:0.16 green:0.22 blue:0.30 alpha:1];
    [cell.profileImage addSubview:profileImageView];
    
    return  cell;

}
@end
