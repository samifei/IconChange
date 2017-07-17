//
//  ViewController.m
//  APPIconChange
//
//  Created by ttxc on 2017/7/17.
//  Copyright © 2017年 TTXC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)defaulticon:(id)sender {
    [self setIcon:nil];
}
- (IBAction)darkicon:(id)sender {
    [self setIcon:@"dark"];
}
- (IBAction)staricon:(id)sender {
    [self setIcon:@"star"];
}
- (IBAction)slicon:(id)sender {
    [self setIcon:@"sl"];
}

-(void)setIcon:(NSString *)iconName
{
    NSString *appiconName = [[UIApplication sharedApplication] alternateIconName];
    NSLog(@"samli iconName %@",appiconName);
    
    [[UIApplication sharedApplication]setAlternateIconName:iconName completionHandler:^(NSError * error){
        NSLog(@"samli error %@",error);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
