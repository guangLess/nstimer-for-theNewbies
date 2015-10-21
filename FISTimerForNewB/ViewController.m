//
//  ViewController.m
//  FISTimerForNewB
//
//  Created by Guang on 10/20/15.
//  Copyright © 2015 Guang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property(nonatomic) NSTimeInterval interval1;
@property(nonatomic) NSTimeInterval interval2;
@property(nonatomic) NSTimeInterval interval3;


@property(strong, nonatomic)NSTimer * timer1;
@property(strong, nonatomic)NSTimer * timer2;
@property(strong, nonatomic)NSTimer * timer3;

@property(nonatomic) NSUInteger gap;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel2;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel3;

//@property(strong, nonatomic) NSString * timeString;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.timer1 = [NSTimer scheduledTimerWithTimeInterval:1.0
                                                  target:self
                                                selector:@selector(startTimer1)
                                                userInfo:nil
                                                 repeats:YES];

    self.timer2 = [NSTimer scheduledTimerWithTimeInterval:0.1
                                                  target:self
                                                selector:@selector(startTimer2)
                                                userInfo:nil
                                                 repeats:YES];
    
    self.timer3 = [NSTimer scheduledTimerWithTimeInterval:1.0
                                                   target:self
                                                 selector:@selector(startTimer3)
                                                 userInfo:nil
                                                  repeats:YES];
    
   
}


-(NSString *)startTimer1{
    
    self.gap = 1;
    self.interval1 += self.gap;
    
    NSUInteger seconds = ABS((int)self.interval1);
    NSUInteger minutes = seconds/60;
    NSUInteger hours = minutes/60;
    
    NSString *timeString1 = [NSString stringWithFormat:@"%02lu:%02lu:%02lu", (unsigned long)hours, minutes%60, seconds%60];
        
    self.timeLabel.text = timeString1;
    return timeString1;
}


-(NSString *)startTimer2{
    
    self.gap = 1;
    self.interval2 += self.gap;

    NSUInteger seconds = ABS((int)self.interval2);
    NSUInteger minutes = seconds/60;
    NSUInteger hours = minutes/60;
    
    NSString *timeString2 = [NSString stringWithFormat:@"%02lu:%02lu:%02lu", (unsigned long)hours, minutes%60, seconds%60];
    self.timeLabel2.text = timeString2;
    return timeString2;
}


-(NSString *)startTimer3{
    
    self.gap = 10;
    self.interval3 += self.gap;

    NSUInteger seconds = ABS((int)self.interval2);
    NSUInteger minutes = seconds/60;
    NSUInteger hours = minutes/60;
    
    NSString *timeString3 = [NSString stringWithFormat:@"%02lu:%02lu:%02lu", (unsigned long)hours, minutes%60, seconds%60];
    self.timeLabel3.text = timeString3;
    return timeString3;
}


/*
 ------ dismiss > working on the method-------------
 self.timer1 = [NSTimer scheduledTimerWithTimeInterval:1.0
 target:self
 selector:@selector((startVarationTime:1 andItsLabel:self.timeLabel.text))
 userInfo:nil
 repeats:YES];
 
 -(NSString *)startVarationTime:(NSUInteger)gap andItsLabel:(NSString *)labelText{
 
 self.x = gap;
 self.interval1 += self.x;
 
 NSUInteger seconds = ABS((int)self.interval1);
 NSUInteger minutes = seconds/60;
 NSUInteger hours = minutes/60;
 
 NSString *timeString1 = [NSString stringWithFormat:@"%02lu:%02lu:%02lu", (unsigned long)hours, minutes%60, seconds%60];
 
 labelText = timeString1;
 return timeString1;
 }
 */

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
