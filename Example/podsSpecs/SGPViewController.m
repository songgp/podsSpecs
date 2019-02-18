//
//  SGPViewController.m
//  podsSpecs
//
//  Created by 1031705629@qq.com on 02/18/2019.
//  Copyright (c) 2019 1031705629@qq.com. All rights reserved.
//

#import "SGPViewController.h"
#import "UIScreen+CYPSafeArea.h"
@interface SGPViewController ()

@end

@implementation SGPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [UIScreen c_safeAreaInsetsForIPhoneX];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
