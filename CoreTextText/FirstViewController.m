//
//  FirstViewController.m
//  CoreTextText
//
//  Created by founderbn on 14-12-14.
//  Copyright (c) 2014年 founderbn. All rights reserved.
//

#import "FirstViewController.h"
#import "CoreTxetView.h"
@interface FirstViewController ()
@property (nonatomic, strong) CoreTxetView *coreTextView;
@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _coreTextView = [CoreTxetView coreTextViewWithFrame:CGRectMake(0, 20, self.view.bounds.size.width, self.view.bounds.size.height/2)];
    _coreTextView.originalStr = @"<a href='%@'>我的博客</a> <a href='%@'>原文</a>,http://blog.csdn.net/wildcatlele,http://jincuodao.baijia.baidu.com/article/26059";
    _coreTextView.backgroundColor =[UIColor greenColor];
    [self.view addSubview:_coreTextView];
    
    
    
    UIButton *changeText = [UIButton buttonWithType:UIButtonTypeCustom];
    changeText.frame = CGRectMake(10, self.view.bounds.size.height/2+20, self.view.bounds.size.width/5, 40);
    [changeText setTitle:@"变文" forState:UIControlStateNormal];
    [changeText addTarget:self action:@selector(didClickChangeText:) forControlEvents:UIControlEventTouchUpInside];
    changeText.backgroundColor = [UIColor grayColor];
    [self.view addSubview:changeText];

    
    UIButton *changeImage = [UIButton buttonWithType:UIButtonTypeCustom];
    changeImage.frame = CGRectMake(self.view.bounds.size.width/5+20, self.view.bounds.size.height/2+20, self.view.bounds.size.width/5, 40);
    [changeImage setTitle:@"变图" forState:UIControlStateNormal];
    [changeImage addTarget:self action:@selector(didClickChangeText:) forControlEvents:UIControlEventTouchUpInside];
    changeImage.backgroundColor = [UIColor redColor];
    [self.view addSubview:changeImage];

    
    UIButton *changeSize = [UIButton buttonWithType:UIButtonTypeCustom];
    changeSize.frame = CGRectMake(self.view.bounds.size.width/5*2+30, self.view.bounds.size.height/2+20, self.view.bounds.size.width/5, 40);
    [changeSize setTitle:@"尺寸" forState:UIControlStateNormal];
    [changeSize addTarget:self action:@selector(didClickChangeText:) forControlEvents:UIControlEventTouchUpInside];
    changeSize.backgroundColor = [UIColor blueColor];
    [self.view addSubview:changeSize];

    
    

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didClickChangeText:(UIButton *)sender
{
    if([@"变文" isEqualToString:sender.titleLabel.text]){
        
        _coreTextView.originalStr = @"我这个人很好说话，只要你愿意我什么都可以。但是你不要骗我，因为我书读得不多";

    }else if ([sender.titleLabel.text isEqualToString:@"变图"]){
    
    
    }else{
        _coreTextView.frame = CGRectMake(10, 20, 300, 300);
    }
    [_coreTextView setNeedsDisplay];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
