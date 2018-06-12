//
//  ViewController.m
//  UIScrollView
//
//  Created by HanYong on 2018/5/24.
//  Copyright © 2018年 HanYong. All rights reserved.
//

#import "ViewController.h"
#import "MainScrollView.h"

@interface ViewController ()
@property (nonatomic, strong) MainScrollView *scrollView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.extendedLayoutIncludesOpaqueBars=NO;
    self.automaticallyAdjustsScrollViewInsets=NO;
    self.modalPresentationCapturesStatusBarAppearance = NO;
    if (@available(iOS 11.0, *)) {
        self.scrollView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    } else {
        // Fallback on earlier versions
        self.automaticallyAdjustsScrollViewInsets = NO;
    }
    self.scrollView = [[MainScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    self.scrollView.bounces = YES;
    self.scrollView.backgroundColor = [UIColor redColor];
    self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width, self.view.frame.size.height+0.001);
    self.scrollView.contentInset = UIEdgeInsetsMake(0, 0, 0, 0);
    self.view = self.scrollView;
    
//    self.view.backgroundColor = [UIColor redColor];
    
    UILabel *lb = [[UILabel alloc] initWithFrame:CGRectMake(10, 20, 300, 30)];
    lb.text = @"YYYYYY";
    lb.font = [UIFont systemFontOfSize:18];
    lb.textColor = [UIColor orangeColor];
    lb.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:lb];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
