//
//  ViewController.m
//  arrayexp
//
//  Created by BridgeLabz on 19/02/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //NSArray *germanMakes = @[@{@"sweet" : @{@"red" : @[@"a" , @"b" ,@"c"] , @"green":@[@"d" , @"e" , @"f" ]} , @"sour":@""}] ;
    
    
    UIImage *img = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"back.jpg"]]];
    NSLog(@"img %@" , img);
    NSString *data =  [UIImagePNGRepresentation(img) base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
    
    NSLog(data);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
