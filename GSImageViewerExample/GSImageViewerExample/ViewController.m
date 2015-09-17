//
//  ViewController.m
//  GSImageViewerExample
//
//  Created by Aren on 15/9/17.
//  Copyright (c) 2015年 Aren. All rights reserved.
//

#import "ViewController.h"
#import "GSImageCollectionViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self showGSImageViewer];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)showGSImageViewer
{
    GSImageCollectionViewController *imageCollectionVC = [[GSImageCollectionViewController alloc] initWithNibName:@"GSImageCollectionViewController" bundle:nil];
    NSArray *dataSource = @[@"http://img5.duitang.com/uploads/item/201410/13/20141013002336_ESvrT.jpeg",
                            @"http://mg.soupingguo.com/bizhi/big/10/285/619/10285619.jpg",
                            @"http://cdn.duitang.com/uploads/item/201410/19/20141019225743_3V4Mc.jpeg",
                            @"http://img1.91.com/uploads/allimg/131129/44-1311291G340.jpg"];
    
    [imageCollectionVC setDataSource:dataSource];
    imageCollectionVC.defaultPageIndex = 2;
    [self.navigationController pushViewController:imageCollectionVC animated:YES];
}

#pragma mark - Action
- (IBAction)onShowDemoButtonAction:(id)sender {
    [self showGSImageViewer];
}

@end
