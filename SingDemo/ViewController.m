//
//  ViewController.m
//  SingDemo
//
//  Created by 王朋 on 2017/9/30.
//  Copyright © 2017年 王朋. All rights reserved.
//

#import "ViewController.h"
#import "KpengSingShowView.h"
@interface ViewController ()
{
    KpengSingShowView *view;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setupUIWithDuration:5 text:@"青青河边草"];
}

- (void)setupUIWithDuration:(NSTimeInterval)duration text:(NSString*)text {
    view =[[KpengSingShowView alloc] initWithFrame:CGRectMake(0, 100, self.view.bounds.size.width,100)];
    view.backgroundColor =[[UIColor blackColor] colorWithAlphaComponent:0.3];
    [view showAnimationWithDuration:10 showText:text alignment:NSTextAlignmentCenter backColor:[UIColor whiteColor] foreColor:[UIColor blackColor] progressViewColor:[UIColor orangeColor] font:[UIFont systemFontOfSize:30]];
 
    [self.view addSubview:view];
}

- (IBAction)btnAction:(UIButton *)sender {
    [view removeFromSuperview];
    [self setupUIWithDuration:10 text:@"永远忘不了"];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
