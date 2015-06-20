//
//  Graphics2DI.m
//  JLaTeXMath-iOS
//
//  Created by JackyKuo on 2015/6/20.
//  Copyright (c) 2015年 JackyKuo. All rights reserved.
//

#import "Graphics2DI.h"
#import "ColorUtil.h"
#import "BasicStrokeI.h"
#import "ColorI.h"
#import "TransformI.h"

@implementation Graphics2DI
@synthesize mCGContext = _mCGContext;
@synthesize mFrame = _mFrame;
@synthesize mColor = _mColor;
@synthesize mFont = _mFont;
@synthesize mStroke = _mStroke;
-(id)initWithContext:(CGContextRef)context
{
    _mCGContext = context;
    _mFont = [[FontI alloc] initWithName:@"Serif" withStyle:1 withSize:12];
    _mColor = (ColorI*)OrgScilabForgeJlatexmathColorUtil_BLACK_;
    return self;
}
-(void)setStrokeWithOrgScilabForgeJlatexmathPlatformGraphicsStroke:(id<OrgScilabForgeJlatexmathPlatformGraphicsStroke>)stroke
{
    BasicStrokeI* basicStroke = (BasicStrokeI*) stroke;
    CGContextSetLineCap(_mCGContext, [basicStroke getNativeCap]);
    CGContextSetLineJoin(_mCGContext, [basicStroke getNativeJoin]);
    CGContextSetMiterLimit(_mCGContext, [basicStroke getMiterLimit]);
    CGContextSetLineWidth(_mCGContext, [basicStroke getWidth]);
    _mStroke = basicStroke;
}

-(id<OrgScilabForgeJlatexmathPlatformGraphicsStroke>)getStroke
{
    return [[BasicStrokeI alloc] initWithWidth:[_mStroke getWidth] withMiterLimit:[_mStroke getMiterLimit] withCGCap:[_mStroke getNativeCap] withCGJoin:[_mStroke getNativeJoin]];
}

-(void)setColorWithOrgScilabForgeJlatexmathPlatformGraphicsColor:(id<OrgScilabForgeJlatexmathPlatformGraphicsColor>)color
{
    _mColor = (ColorI*)color;
    CGContextSetStrokeColorWithColor(_mCGContext, [_mColor impl]);
    CGContextSetFillColorWithColor(_mCGContext, [_mColor impl]);
}

-(id<OrgScilabForgeJlatexmathPlatformFontFont>)getFont
{
    return _mFont;
}

-(id<OrgScilabForgeJlatexmathPlatformGraphicsTransform>)getTransform
{
    return [[TransformI alloc] initWithCGAffineTransform: CGContextGetCTM(_mCGContext)];
}





@end
