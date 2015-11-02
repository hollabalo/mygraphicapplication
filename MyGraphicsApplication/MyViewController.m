//
//  MyViewController.m
//  MyGraphicsApplication
//
//  Created by John MIchael Gerona on 7/24/15.
//  Copyright (c) 2015 jmdg. All rights reserved.
//

#import "MyViewController.h"
#import "MySuperView.h"

@interface MyViewController ()

@end

@implementation MyViewController

- (void)loadView {
    self.superView = [[MySuperView alloc] init];
    self.view = self.superView;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
