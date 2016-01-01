//
//  ViewController.m
//  LPLaunchManagerDemo
//
//  Created by XuYafei on 15/12/29.
//  Copyright © 2015年 loopeer. All rights reserved.
//

#import "ViewController.h"
#import "LPADViewController.h"

@implementation ViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"ViewController";
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"UIActionSheet" delegate:nil cancelButtonTitle:@"cancle" destructiveButtonTitle:@"I am a actionsheet" otherButtonTitles:@"click me", nil];
    [actionSheet showInView:self.view];
}

@end
