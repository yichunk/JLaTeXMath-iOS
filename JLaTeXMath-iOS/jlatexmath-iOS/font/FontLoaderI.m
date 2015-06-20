//
//  FontLoaderI.m
//  JLaTeXMath-iOS
//
//  Created by JackyKuo on 2015/6/20.
//  Copyright (c) 2015年 JackyKuo. All rights reserved.
//

#import "FontLoaderI.h"
#import "FontI.h"

@implementation FontLoaderI
@synthesize mNSBundle = _mNSBundle;
-(id)init
{
    _mNSBundle = [NSBundle mainBundle];
    return self;
}
-(id<OrgScilabForgeJlatexmathPlatformFontFont>)loadFontWithId:(id)fontInt withNSString:(NSString *)name
{
    NSRange begin = [name rangeOfString:@"/" options:NSBackwardsSearch];
    NSRange end = [name rangeOfString:@"." options:NSBackwardsSearch];
    NSString* fontName = [name substringWithRange:NSMakeRange(begin.location+1, end.location)];
    NSLog(@"%@",fontName);
    return [[FontI alloc] initWithName:fontName withStyle:1 withSize:40];
}
@end
