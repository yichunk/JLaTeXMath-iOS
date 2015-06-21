//
//  ImageI.m
//  JLaTeXMath-iOS
//
//  Created by JackyKuo on 2015/6/20.
//  Copyright (c) 2015年 JackyKuo. All rights reserved.
//

#import "ImageI.h"
#import "Graphics2DI.h"


@implementation ImageI
@synthesize mCGContext = _mCGContext;
@synthesize mCGImage = _mCGImage;
-(instancetype)initWithWidth:(int)width withHeight:(int)height
{
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    _mCGContext = CGBitmapContextCreate(nil, width, height, 8, width*4, colorSpace, kCGImageAlphaPremultipliedFirst);
    //_mCGImage = CGBitmapContextCreateImage(_mCGContext);
    CGColorSpaceRelease(colorSpace);
    CGContextTranslateCTM(_mCGContext, 0, height);
    CGContextScaleCTM(_mCGContext, 1, -1);
    CGContextSetTextMatrix(_mCGContext, CGAffineTransformMake(1, 0, 0, -1, 0, height));
    return self;
}
-(id<OrgScilabForgeJlatexmathPlatformGraphicsGraphics2DInterface>)createGraphics2D
{
    return [[Graphics2DI alloc] initWithContext:_mCGContext];
}
-(CGImageRef)getImage
{
    _mCGImage = CGBitmapContextCreateImage(_mCGContext);
    return _mCGImage;
}

-(jint)getWidth
{
    return (int)CGImageGetWidth(_mCGImage);
}

-(jint)getHeight
{
    return (int)CGImageGetHeight(_mCGImage);
}

@end
