//
//  carme.m
//  CustomDemo
//
//  Created by 李言 on 14-4-27.
//  Copyright (c) 2014年 liyan. All rights reserved.
//

#import "carme.h"

@implementation carme
static carme *ca=nil;
+(carme *)shareCarme{
    @synchronized(self){
        if (ca==nil) {
            ca =[[carme alloc] init];
        }
        
        
    }
    return ca;
}
+(id)allocWithZone:(NSZone *)zone{
    
    @synchronized(self)
    {
        if(ca == nil)
        {
            ca = [super allocWithZone:zone];
            return ca;
        }
    }
    return ca;
}
//-(id)init{
//    self = [super init];
//    if(self){
//   
//    }
//    
//    return self;
//}

@end
