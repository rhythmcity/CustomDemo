//
//  CarmeViewController.m
//  CustomDemo
//
//  Created by liyan on 14-3-21.
//  Copyright (c) 2014年 liyan. All rights reserved.
//

#import "CarmeViewController.h"

@interface CarmeViewController ()

@end

@implementation CarmeViewController

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
    //   声明一个session:
    AVCaptureSession *session = [[AVCaptureSession alloc] init];
    
    //   session允许定义音频视频录制的质量。
    [session setSessionPreset:AVCaptureSessionPresetMedium];
    
    //   2. capture device
    //   定义好session后，就该定义session所使用的设备了。（使用AVMediaTypeVideo 来支持视频和图片）
    AVCaptureDevice *captureDevice = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
    
    //   3. capture device input
    //   有了capture device, 然后就获取其input capture device， 并将该input device加到session上。
    AVCaptureDeviceInput *deviceInput = [AVCaptureDeviceInput deviceInputWithDevice:captureDevice error:nil];
    if ( [session canAddInput:deviceInput] )
        [session addInput:deviceInput];
    
    //    4. preview
    //    在定义output device之前，我们可以先使用preview layer来显示一下camera buffer中的内容。这也将是相机的“取景器”。
    //    AVCaptureVideoPreviewLayer可以用来快速呈现相机(摄像头)所收集到的原始数据。
    //    我们使用第一步中定义的session来创建preview layer, 并将其添加到main view layer上。
    AVCaptureVideoPreviewLayer *previewLayer = [[AVCaptureVideoPreviewLayer alloc] initWithSession:session];
    [previewLayer setVideoGravity:AVLayerVideoGravityResizeAspectFill];
    
    CALayer *rootLayer = [[self view] layer];
    [rootLayer setMasksToBounds:YES];
    [previewLayer setFrame:CGRectMake(-70, 0, rootLayer.bounds.size.height, rootLayer.bounds.size.height)];
    [rootLayer insertSublayer:previewLayer atIndex:0];
    
    //    5. start Run
    //    最后需要start the session.
    [session startRunning];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
