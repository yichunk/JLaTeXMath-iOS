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
#import "FontI.h"
#import "Rectangle2DI.h"
#import "Line2DI.h"
#import "Point2D.h"
#import "ImageI.h"
#import <CoreText/CoreText.h>
#import <UIKit/UIKit.h>
#import "J2ObjC_source.h"

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

-(id<OrgScilabForgeJlatexmathPlatformGraphicsColor>)getColor
{
    return _mColor;
}

-(id<OrgScilabForgeJlatexmathPlatformFontFont>)getFont
{
    return _mFont;
}

-(id<OrgScilabForgeJlatexmathPlatformGraphicsTransform>)getTransform
{
    return [[TransformI alloc] initWithCGAffineTransform: CGContextGetCTM(_mCGContext)];
}

-(void)setFontWithOrgScilabForgeJlatexmathPlatformFontFont:(id<OrgScilabForgeJlatexmathPlatformFontFont>)font
{
    _mFont = (FontI*)font;
}

-(void)fillRectWithInt:(jint)x withInt:(jint)y withInt:(jint)width withInt:(jint)height
{
    CGContextFillRect(_mCGContext, CGRectMake(x, y, width, height));
}

-(void)fillWithOrgScilabForgeJlatexmathPlatformGeomRectangle2D:(id<OrgScilabForgeJlatexmathPlatformGeomRectangle2D>)rectangle
{
    CGContextFillRect(_mCGContext, [((Rectangle2DI*)rectangle) mRect]);
}

-(void)drawWithOrgScilabForgeJlatexmathPlatformGeomRectangle2D:(id<OrgScilabForgeJlatexmathPlatformGeomRectangle2D>)rectangle
{
    CGContextStrokeRect(_mCGContext, [((Rectangle2DI*)rectangle) mRect]);
}

-(void)drawWithOrgScilabForgeJlatexmathPlatformGeomLine2D:(id<OrgScilabForgeJlatexmathPlatformGeomLine2D>)line
{
    Line2DI* mLine = (Line2DI*)line;
    CGPoint points[] = {[mLine startPoint], [mLine endPoint]};
    CGContextAddLines(_mCGContext, points, 2);
    CGContextStrokePath(_mCGContext);
}

-(void)drawCharsWithCharArray:(IOSCharArray *)data withInt:(jint)offset withInt:(jint)length withInt:(jint)x withInt:(jint)y
{
    NSString* string = [NSString stringWithOffset:offset length:length characters:data];
    [self drawStringWithString:string withX:x withY:y];
}

-(void)drawStringWithString:(NSString *)string withX:(int)x withY:(int)y
{
    NSDictionary *attributesDict = [NSDictionary dictionaryWithObjectsAndKeys:
                                    (id)[_mFont mCTFont], (id)kCTFontAttributeName,
                                    [_mColor impl], (id)kCTForegroundColorAttributeName,
                                    nil];
    NSAttributedString *stringToDraw = [[NSAttributedString alloc] initWithString:string
                                                                       attributes:attributesDict];
    CTLineRef line = CTLineCreateWithAttributedString((CFAttributedStringRef)stringToDraw);
    CGContextSetTextPosition(_mCGContext, x, y);
    CTLineDraw(line, _mCGContext);
    CFRelease(line);
    [stringToDraw release];
}
-(void)drawArcWithInt:(jint)x withInt:(jint)y withInt:(jint)width withInt:(jint)height withInt:(jint)startAngle withInt:(jint)arcAngle
{
    ;
}

-(void)fillArcWithInt:(jint)x withInt:(jint)y withInt:(jint)width withInt:(jint)height withInt:(jint)startAngle withInt:(jint)arcAngle
{
    ;
}

-(void)translateWithDouble:(jdouble)x withDouble:(jdouble)y
{
    CGContextTranslateCTM(_mCGContext, x, y);
}

-(void)scale__WithDouble:(jdouble)x withDouble:(jdouble)y
{
    CGContextScaleCTM(_mCGContext, x, y);
}

-(void)rotateWithDouble:(jdouble)theta withDouble:(jdouble)x withDouble:(jdouble)y
{
    [self translateWithDouble:x withDouble:y];
    CGContextRotateCTM(_mCGContext, theta/3.14150*180);
    [self translateWithDouble:-x withDouble:-y];
}

-(void)rotateWithDouble:(jdouble)theta
{
    CGContextRotateCTM(_mCGContext, theta/3.14150*180);
}

-(void)drawImageWithOrgScilabForgeJlatexmathPlatformGraphicsImage:(id<OrgScilabForgeJlatexmathPlatformGraphicsImage>)image withInt:(jint)x withInt:(jint)y
{
    ImageI* imageI = (ImageI*) image;
    CGImageRef cgimage = [imageI getImage];
    double width = CGImageGetWidth(cgimage);
    double height = CGImageGetHeight(cgimage);
    CGContextDrawImage(_mCGContext, CGRectMake(x, y, width, height), cgimage);
}

-(void)drawImageWithOrgScilabForgeJlatexmathPlatformGraphicsImage:(id<OrgScilabForgeJlatexmathPlatformGraphicsImage>)image withOrgScilabForgeJlatexmathPlatformGraphicsTransform:(id<OrgScilabForgeJlatexmathPlatformGraphicsTransform>)transform
{
    ;
}

-(jint)getRenderingHintWithInt:(jint)key
{
    return -1;
}

-(void)dispose
{
    ;
}

-(void)setRenderingHintWithInt:(jint)key withInt:(jint)value
{
    ;
}

-(void)saveTransformation
{
    CGContextSaveGState(_mCGContext);
}

-(void)restoreTransformation
{
    CGContextRestoreGState(_mCGContext);
}



@end
