//
//  ViewController.m
//  painter
//
//  Created by 白昆仑 on 2017/5/16.
//  Copyright © 2017年 bkl. All rights reserved.
//

#import "ViewController.h"
#import "PainterView.h"

#define TOOL_BAR_HEIGHT     50.f

@interface ViewController ()

@property (nonatomic, strong) PainterView *painterView;
@property (nonatomic, strong) UIButton *eraserBtn;
@property (nonatomic, strong) UIButton *paintBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    self.painterView = [[PainterView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height-TOOL_BAR_HEIGHT)];
    [self.view addSubview:self.painterView];
    
    _eraserBtn = [[UIButton alloc] initWithFrame:CGRectMake(0,
                                                           self.view.bounds.size.height-TOOL_BAR_HEIGHT,
                                                           self.view.bounds.size.width/2,
                                                           TOOL_BAR_HEIGHT)];
    _eraserBtn.backgroundColor = [UIColor colorWithWhite:0.9 alpha:1];
    _eraserBtn.layer.borderColor = [UIColor colorWithWhite:0.3 alpha:1].CGColor;
    _eraserBtn.layer.borderWidth = 1;
    [_eraserBtn setTitle:@"橡皮擦" forState:UIControlStateNormal];
    [_eraserBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_eraserBtn addTarget:self action:@selector(eraserClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_eraserBtn];
    
    _paintBtn = [[UIButton alloc] initWithFrame:CGRectMake(self.view.bounds.size.width/2, _eraserBtn.frame.origin.y, self.view.bounds.size.width/2, TOOL_BAR_HEIGHT)];
    _paintBtn.backgroundColor = [UIColor colorWithWhite:0.9 alpha:1];
    _paintBtn.layer.borderColor = [UIColor colorWithWhite:0.3 alpha:1].CGColor;
    _paintBtn.layer.borderWidth = 1;
    [_paintBtn setTitle:@"画笔" forState:UIControlStateNormal];
    [_paintBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_paintBtn addTarget:self action:@selector(paintClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_paintBtn];
    
    [self paintClicked:nil];
}

- (void)eraserClicked:(id)sender
{
    self.painterView.paintColor = [UIColor clearColor];
    self.painterView.paintWidth = 20;
    _eraserBtn.backgroundColor = [UIColor colorWithWhite:0.6 alpha:1];
    _paintBtn.backgroundColor = [UIColor colorWithWhite:0.9 alpha:1];
}

- (void)paintClicked:(id)sender
{
    self.painterView.paintColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:0.5];
    self.painterView.paintWidth = 12;
    _eraserBtn.backgroundColor = [UIColor colorWithWhite:0.9 alpha:1];
    _paintBtn.backgroundColor = [UIColor colorWithWhite:0.6 alpha:1];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
