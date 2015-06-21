//
//  FontFactoryiOS.m
//  JLaTeXMath-iOS
//
//  Created by JackyKuo on 2015/6/20.
//  Copyright (c) 2015年 JackyKuo. All rights reserved.
//

#import "FontFactoryiOS.h"
#import "FontLoaderI.h"
#import "TextLayoutI.h"
#import "FontI.h"
#import "TextAttributeI.h"
#import "TextAttributeProviderI.h"

@implementation FontFactoryiOS
-(id<OrgScilabForgeJlatexmathPlatformFontFont>)createFontWithNSString:(NSString *)name withInt:(jint)style withInt:(jint)size
{
    return [[FontI alloc] initWithName:name withStyle:style withSize:size];
}
-(id<OrgScilabForgeJlatexmathPlatformFontFontLoader>)createFontLoader
{
    return [[FontLoaderI alloc] init];
}
-(id<OrgScilabForgeJlatexmathPlatformFontTextAttributeProvider>)createTextAttributeProvider
{
    return [[TextAttributeProviderI alloc] init];
}
-(id<OrgScilabForgeJlatexmathPlatformFontTextLayout>)createTextLayoutWithNSString:(NSString *)string withOrgScilabForgeJlatexmathPlatformFontFont:(id<OrgScilabForgeJlatexmathPlatformFontFont>)font withOrgScilabForgeJlatexmathPlatformFontFontRenderContext:(id<OrgScilabForgeJlatexmathPlatformFontFontRenderContext>)fontRenderContext
{
    return [[TextLayoutI alloc] initWithString:string withFont:font];
}
@end
