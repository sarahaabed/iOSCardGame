//
//  ProfileViewController.m
//  Memory
//
//  Created by JETS on 4/5/15.
//  Copyright (c) 2015 marian samy. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController
@synthesize profileImage,profileNameLabel,profileNameTxtField,changeNameBtn1,changeImageBtn;

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
    
    self.profileNameLabel.hidden = NO;
    self.profileNameTxtField.enabled = NO;
    self.profileNameTxtField.hidden = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)changeNamePressed:(id)sender{
    
    
    if ([[[sender titleLabel] text]  isEqual: @"Change Name"]) {
        self.profileNameLabel.hidden = YES;
        self.profileNameTxtField.enabled = YES;
        self.profileNameTxtField.hidden = NO;
        [self.changeNameBtn1 setTitle:@"Save Name" forState:UIControlStateNormal];
    }else if ([[[sender titleLabel]text] isEqual:@"Save Name"]){
        [profileNameTxtField setText:[profileNameTxtField text]];
        self.profileNameLabel.hidden = NO;
        self.profileNameTxtField.enabled = NO;
        self.profileNameTxtField.hidden = YES;
        [self.changeNameBtn1 setTitle:@"Change Name" forState:UIControlStateNormal];
    }
    
}

-(void)changeImagePressed:(id)sender{
    
}
@end