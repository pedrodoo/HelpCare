//
//  ViewController.m
//  Product
//
//  Created by Anar Enhsaihan on 12/6/14.
//  Copyright (c) 2014 Citta LLC. All rights reserved.
//

#import "ViewController.h"
#import "VideoViewController.h"
#import "AppDelegate.h"

@interface ViewController ()
@property (nonatomic, strong) VideoViewController *videoVC;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(dismissVideoVC) name:@"dismissVideoVC" object:nil];
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    appDelegate.firstTime = YES;
}

-(void)viewDidAppear:(BOOL)animated
{
    
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    if (appDelegate.firstTime) {
        self.videoVC = (VideoViewController *)[self.storyboard instantiateViewControllerWithIdentifier:@"videoVC"];
        self.videoVC.view.backgroundColor = [UIColor colorWithWhite:0.3 alpha:0.75];
        self.videoVC.modalPresentationStyle = UIModalPresentationOverCurrentContext;
        //    [self presentViewController:self.videoVC animated:YES completion:nil];
        [self addChildViewController: self.videoVC];
        //    alertVC.view.frame = ...; //or something equivalent if you're using auto layout
        
        [self.view addSubview: self.videoVC.view];
        [self.videoVC didMoveToParentViewController: self];
    }
    
    
}

-(void)dismissVideoVC
{
    
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    appDelegate.firstTime = NO;
    
    [self.videoVC willMoveToParentViewController:nil];
//    [self.videoVC.view removeFromSuperview];
    [UIView animateWithDuration:0.4
                     animations:^{self.videoVC.view.alpha = 0.0;}
                     completion:^(BOOL finished){ [self.videoVC.view removeFromSuperview]; }];
//    [self dismissModalViewControllerAnimated:YES];
    [self.videoVC removeFromParentViewController];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
