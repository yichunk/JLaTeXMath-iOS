//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/jacky/GSoC/GeoGebraiOSARC/GeoGebraiOSARC/javasources/org/scilab/forge/jlatexmath/Char.java
//


#include "Char.h"
#include "CharFont.h"
#include "Font.h"
#include "J2ObjC_source.h"
#include "Metrics.h"

@interface OrgScilabForgeJlatexmathChar () {
 @public
  jchar c_;
  id<OrgScilabForgeJlatexmathPlatformFontFont> font_;
  OrgScilabForgeJlatexmathMetrics *m_;
  jint fontCode_;
}

@end

J2OBJC_FIELD_SETTER(OrgScilabForgeJlatexmathChar, font_, id<OrgScilabForgeJlatexmathPlatformFontFont>)
J2OBJC_FIELD_SETTER(OrgScilabForgeJlatexmathChar, m_, OrgScilabForgeJlatexmathMetrics *)

@implementation OrgScilabForgeJlatexmathChar

- (instancetype)initWithChar:(jchar)c
withOrgScilabForgeJlatexmathPlatformFontFont:(id<OrgScilabForgeJlatexmathPlatformFontFont>)f
                     withInt:(jint)fc
withOrgScilabForgeJlatexmathMetrics:(OrgScilabForgeJlatexmathMetrics *)m {
  OrgScilabForgeJlatexmathChar_initWithChar_withOrgScilabForgeJlatexmathPlatformFontFont_withInt_withOrgScilabForgeJlatexmathMetrics_(self, c, f, fc, m);
  return self;
}

- (OrgScilabForgeJlatexmathCharFont *)getCharFont {
  return new_OrgScilabForgeJlatexmathCharFont_initWithChar_withInt_(c_, fontCode_);
}

- (jchar)getChar {
  return c_;
}

- (id<OrgScilabForgeJlatexmathPlatformFontFont>)getFont {
  return font_;
}

- (jint)getFontCode {
  return fontCode_;
}

- (jfloat)getWidth {
  return [((OrgScilabForgeJlatexmathMetrics *) nil_chk(m_)) getWidth];
}

- (jfloat)getItalic {
  return [((OrgScilabForgeJlatexmathMetrics *) nil_chk(m_)) getItalic];
}

- (jfloat)getHeight {
  return [((OrgScilabForgeJlatexmathMetrics *) nil_chk(m_)) getHeight];
}

- (jfloat)getDepth {
  return [((OrgScilabForgeJlatexmathMetrics *) nil_chk(m_)) getDepth];
}

- (OrgScilabForgeJlatexmathMetrics *)getMetrics {
  return m_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithChar:withOrgScilabForgeJlatexmathPlatformFontFont:withInt:withOrgScilabForgeJlatexmathMetrics:", "Char", NULL, 0x1, NULL, NULL },
    { "getCharFont", NULL, "Lorg.scilab.forge.jlatexmath.CharFont;", 0x1, NULL, NULL },
    { "getChar", NULL, "C", 0x1, NULL, NULL },
    { "getFont", NULL, "Lorg.scilab.forge.jlatexmath.platform.font.Font;", 0x1, NULL, NULL },
    { "getFontCode", NULL, "I", 0x1, NULL, NULL },
    { "getWidth", NULL, "F", 0x1, NULL, NULL },
    { "getItalic", NULL, "F", 0x1, NULL, NULL },
    { "getHeight", NULL, "F", 0x1, NULL, NULL },
    { "getDepth", NULL, "F", 0x1, NULL, NULL },
    { "getMetrics", NULL, "Lorg.scilab.forge.jlatexmath.Metrics;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "c_", NULL, 0x12, "C", NULL, NULL,  },
    { "font_", NULL, 0x12, "Lorg.scilab.forge.jlatexmath.platform.font.Font;", NULL, NULL,  },
    { "m_", NULL, 0x12, "Lorg.scilab.forge.jlatexmath.Metrics;", NULL, NULL,  },
    { "fontCode_", NULL, 0x12, "I", NULL, NULL,  },
  };
  static const J2ObjcClassInfo _OrgScilabForgeJlatexmathChar = { 2, "Char", "org.scilab.forge.jlatexmath", NULL, 0x1, 10, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgScilabForgeJlatexmathChar;
}

@end

void OrgScilabForgeJlatexmathChar_initWithChar_withOrgScilabForgeJlatexmathPlatformFontFont_withInt_withOrgScilabForgeJlatexmathMetrics_(OrgScilabForgeJlatexmathChar *self, jchar c, id<OrgScilabForgeJlatexmathPlatformFontFont> f, jint fc, OrgScilabForgeJlatexmathMetrics *m) {
  (void) NSObject_init(self);
  self->font_ = f;
  self->fontCode_ = fc;
  self->c_ = c;
  self->m_ = m;
}

OrgScilabForgeJlatexmathChar *new_OrgScilabForgeJlatexmathChar_initWithChar_withOrgScilabForgeJlatexmathPlatformFontFont_withInt_withOrgScilabForgeJlatexmathMetrics_(jchar c, id<OrgScilabForgeJlatexmathPlatformFontFont> f, jint fc, OrgScilabForgeJlatexmathMetrics *m) {
  OrgScilabForgeJlatexmathChar *self = [OrgScilabForgeJlatexmathChar alloc];
  OrgScilabForgeJlatexmathChar_initWithChar_withOrgScilabForgeJlatexmathPlatformFontFont_withInt_withOrgScilabForgeJlatexmathMetrics_(self, c, f, fc, m);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgScilabForgeJlatexmathChar)