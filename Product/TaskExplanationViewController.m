//
//  TaskExplanationViewController.m
//  Product
//
//  Created by Anar Enhsaihan on 12/6/14.
//  Copyright (c) 2014 Citta LLC. All rights reserved.
//

#import "TaskExplanationViewController.h"

@interface TaskExplanationViewController ()
@property (nonatomic) BOOL recording;
@end

@implementation TaskExplanationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)recordButtonPressed:(id)sender {
    
    self.recording = !self.recording;
    
    if (self.recording) {
        UIImage *secondScreen = [UIImage imageNamed:@"2.png"];
        [self.recorderImage setImage:secondScreen];
    } else {
        UIImage *firstScreen = [UIImage imageNamed:@"3.png"];
        [self.recorderImage setImage:firstScreen];
    }
    
    
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
