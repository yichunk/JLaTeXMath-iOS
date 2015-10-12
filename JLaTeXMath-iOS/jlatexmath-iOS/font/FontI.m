//
//  FontI.m
//  JLaTeXMath-iOS
//
//  Created by JackyKuo on 2015/6/20.
//  Copyright (c) 2015年 JackyKuo. All rights reserved.
//

#import "FontI.h"

@implementation FontI
@synthesize mCTFont = _mCTFont;
-(id)initWithName:(NSString *)name withStyle:(int)sty withSize:(int)s
{
    size = s;
    style = sty;
    //NSLog(@"name :%@",name);
    _mCTFont = CTFontCreateWithName((CFStringRef)name, size, nil);
    return self;
}
@end
