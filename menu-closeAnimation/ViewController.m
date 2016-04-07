//
//  ViewController.m
//  menu-closeAnimation
//
//  Created by 叶振龙 on 16/4/6.
//  Copyright © 2016年 叶振龙. All rights reserved.
//

#import "ViewController.h"
#import "MenuCloseAnimationView.h"

@interface ViewController ()
@property (nonatomic, strong) MenuCloseAnimationView *animationView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.animationView = [[MenuCloseAnimationView alloc] initWithFrame:CGRectMake(0, 150, self.view.bounds.size.width, 120)];
    
    [self.animationView addTarget:self action:@selector(buttonAnimation:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.animationView];
    
}

- (void)buttonAnimation:(UIButton *)sender{
    if (self.animationView.selected == NO) {
        self.animationView.selected = YES;
        [_animationView startAnimation];
    }else{
        self.animationView.selected = NO;
        [_animationView startAnimation2];
    }
}




@end
