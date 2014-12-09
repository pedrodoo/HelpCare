//
//  VideoViewController.m
//  Product
//
//  Created by Anar Enhsaihan on 12/6/14.
//  Copyright (c) 2014 Citta LLC. All rights reserved.
//

#import "VideoViewController.h"

@interface VideoViewController ()

@end

@implementation VideoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString *videoPath =[[NSBundle mainBundle] pathForResource:@"IMG_2796" ofType:@"mov"];
    
    NSString *htmlString=[NSString stringWithFormat:@"<body> <video src=\"%@\" controls autoplay height=\"400\" width=\"300\" > </video> </body>", videoPath];
    
    NSURL *baseURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] bundlePath]];
    [self.videoPlayer loadHTMLString:htmlString baseURL:baseURL];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)dismissScreen:(id)sender {
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"dismissVideoVC" object:nil];
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
