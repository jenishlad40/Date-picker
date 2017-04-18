//
//  ViewController.m
//  DatePicker
//
//  Created by test on 3/28/17.
//  Copyright © 2017 NeoRays. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)getdate:(id)sender {
    //getting date from date picker assigning in var myChoosenDate
    NSDate *myChoosenDate = self.myDatePicket.date;
    
    [_myDatePicket date];
    
    //Creating instance of an date formatter
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    
    //Setting Date format
    [formatter setDateFormat:@"YYYY/MM/dd"];
    
    //Assigning date in date label
   // self.myDatePicket.text = [NSString stringWithFormat:@"%@",[formatter stringFromDate:myChoosenDate]];
    
    //Creating object for an alert message
    NSString *alertMessage = [NSString stringWithFormat:@"%@",[formatter stringFromDate:myChoosenDate]];
    
    //Alert Message
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Selected Date is"
                                                                   message:alertMessage
                                                            preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {}];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];

}
@end
