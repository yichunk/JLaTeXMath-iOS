//
//  GraphicsFactoryiOS.m
//  JLaTeXMath-iOS
//
//  Created by JackyKuo on 2015/6/21.
//  Copyright (c) 2015年 JackyKuo. All rights reserved.
//

#import "GraphicsFactoryiOS.h"
#import "BasicStrokeI.h"
#import "ColorI.h"
#import "ImageI.h"
#import "TransformI.h"

@implementation GraphicsFactoryiOS
-(id<OrgScilabForgeJlatexmathPlatformGraphicsBasicStroke>)createBasicStrokeWithFloat:(jfloat)width withInt:(jint)cap withInt:(jint)join withFloat:(jfloat)miterLimit
{
    return [[BasicStrokeI alloc] initWithWidth:width withMiterLimit:cap withCap:join withJoin:miterLimit];
}
-(id<OrgScilabForgeJlatexmathPlatformGraphicsColor>)createColorWithInt:(jint)red withInt:(jint)green withInt:(jint)blue
{
    return [[ColorI alloc] initWithR:red withG:green withB:blue];
}

-(id<OrgScilabForgeJlatexmathPlatformGraphicsImage>)createImageWithInt:(jint)width withInt:(jint)height withInt:(jint)type
{
    return [[ImageI alloc] initWithWidth:width withHeight:height];
}

-(id<OrgScilabForgeJlatexmathPlatformGraphicsImage>)getImageWithNSString:(NSString *)path
{
    return nil;
}

-(id<OrgScilabForgeJlatexmathPlatformGraphicsTransform>)createTransform
{
    return [[TransformI alloc] init];
}

@end
