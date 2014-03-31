//
//  GCDViewController.h
//  CustomDemo
//
//  Created by liyan on 14-3-18.
//  Copyright (c) 2014年 liyan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Reachability.h"
#import "ASIHTTPRequest.h"
#import "JSONKit.h"
#import "ASINetworkQueue.h"
#import "ASIFormDataRequest.h"
@interface GCDViewController : UIViewController<ASIHTTPRequestDelegate>
{
    ASIFormDataRequest *request;

}
@property(strong, nonatomic)ASINetworkQueue * WorkQueue;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UIButton *btn;
- (IBAction)btn_click:(id)sender;

-(void)numwithint:(int)num andstringwth:(NSString *)string andfloatwith:(float)floatnum;


@end
