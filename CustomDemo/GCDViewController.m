//
//  GCDViewController.m
//  CustomDemo
//
//  Created by liyan on 14-3-18.
//  Copyright (c) 2014年 liyan. All rights reserved.
//

#import "GCDViewController.h"
int (^succeed) (int a, int b);
int (^fail) (int c , int d);
@interface GCDViewController ()

@end

@implementation GCDViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    Reachability * reach=[Reachability reachabilityWithHostName:@"www.apple.com"];
    switch ([reach currentReachabilityStatus])
    {
        case NotReachable:
        {
            NSLog(@"无网络连接");
        }
            break;
        case ReachableViaWiFi:
        {
            NSLog(@"使用WiFi");
        }
            break;
        case ReachableViaWWAN:
        {
            NSLog(@"使用3G网络");
        }
            break;
        default:
            break;
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)request{
    NSLog(@"网络请求");
}
-(void)getnum:(int )a succeed:(void(^)(int a ,int b))succeed fail:(void(^)(int c ,int d))fail{
    
    succeed(2,3);
    
    
    fail (4 ,5);
    


}

- (IBAction)btn_click:(id)sender {
//   
 //  int (^myblocks) (int a ,int b ) = NULL;
//    myblocks = ^(void) {
//        NSLog(@"in blocks");
//    };
//    NSLog(@"before myblocks");
//    myblocks();
//    __block int sum = 0;
//    int (^myblocks3) (int a, int b) = ^(int a, int b) {
//        sum = a + b;
//        return sum;
//    };
//    myblocks3(20, 30);
//    NSLog(@"sum is %d", sum);

    [self getnum:0 succeed:^(int a, int b) {
        NSLog(@"%d,%d",a,b);
    } fail:^(int c, int d) {
        NSLog(@"%d,%d",c,d);
    }];
//    [self getnum:^(int a, int b) {
//        NSLog(@"%d%d",a,b);
//    }];
    NSLog(@"dasfasdfa");
//    dispatch_queue_t grounpBack= dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
//    dispatch_async(grounpBack, ^{
//        NSURL * URL=[NSURL URLWithString:@"http://avatar.csdn.net/2/C/D/1_totogo2010.jpg"];
//        NSData * DATA=[[NSData alloc]initWithContentsOfURL:URL];
//        UIImage * image=[[UIImage alloc]initWithData:DATA];
//        if (!DATA) {
//        
//            self.imageView.image=image;
//        }
//       // [self request];
//    
//    });
}
@end
