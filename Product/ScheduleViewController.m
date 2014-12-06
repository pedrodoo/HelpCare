//
//  ScheduleViewController.m
//  Product
//
//  Created by Anar Enhsaihan on 12/6/14.
//  Copyright (c) 2014 Citta LLC. All rights reserved.
//

#import "ScheduleViewController.h"

@interface ScheduleViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *scheduleImageView;

@end

@implementation ScheduleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)todayButtonPressed:(id)sender {
    
    UIImage *image = [UIImage imageNamed:@"form2.png"];
    [self.scheduleImageView setImage:image];
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
