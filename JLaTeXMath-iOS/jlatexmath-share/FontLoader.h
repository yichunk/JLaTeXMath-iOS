//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/jacky/GSoC/GeoGebraiOSARC/GeoGebraiOSARC/javasources/org/scilab/forge/jlatexmath/platform/font/FontLoader.java
//

#ifndef _OrgScilabForgeJlatexmathPlatformFontFontLoader_H_
#define _OrgScilabForgeJlatexmathPlatformFontFontLoader_H_

#include "J2ObjC_header.h"

@protocol OrgScilabForgeJlatexmathPlatformFontFont;

#define OrgScilabForgeJlatexmathPlatformFontFontLoader_PIXELS_PER_POINT 1.0f

@protocol OrgScilabForgeJlatexmathPlatformFontFontLoader < NSObject, JavaObject >

- (id<OrgScilabForgeJlatexmathPlatformFontFont>)loadFontWithId:(id)fontInt
                                                  withNSString:(NSString *)name;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgScilabForgeJlatexmathPlatformFontFontLoader)

J2OBJC_STATIC_FIELD_GETTER(OrgScilabForgeJlatexmathPlatformFontFontLoader, PIXELS_PER_POINT, jfloat)

J2OBJC_TYPE_LITERAL_HEADER(OrgScilabForgeJlatexmathPlatformFontFontLoader)

#endif // _OrgScilabForgeJlatexmathPlatformFontFontLoader_H_