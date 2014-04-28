//
//  CarmeViewController.h
//  CustomDemo
//
//  Created by liyan on 14-3-21.
//  Copyright (c) 2014年 liyan. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol text <NSObject>
-(void)to;
@end
@interface CarmeViewController : UIViewController
@property (nonatomic, retain)id<text>delegate;

@end
