//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/jacky/GSoC/GeoGebraiOSARC/GeoGebraiOSARC/javasources/org/scilab/forge/jlatexmath/MathAtom.java
//

#ifndef _OrgScilabForgeJlatexmathMathAtom_H_
#define _OrgScilabForgeJlatexmathMathAtom_H_

#include "Atom.h"
#include "J2ObjC_header.h"

@class OrgScilabForgeJlatexmathBox;
@class OrgScilabForgeJlatexmathTeXEnvironment;

@interface OrgScilabForgeJlatexmathMathAtom : OrgScilabForgeJlatexmathAtom {
 @public
  OrgScilabForgeJlatexmathAtom *base_;
}

#pragma mark Public

- (instancetype)initWithOrgScilabForgeJlatexmathAtom:(OrgScilabForgeJlatexmathAtom *)base
                                             withInt:(jint)style;

- (OrgScilabForgeJlatexmathBox *)createBoxWithOrgScilabForgeJlatexmathTeXEnvironment:(OrgScilabForgeJlatexmathTeXEnvironment *)env;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgScilabForgeJlatexmathMathAtom)

J2OBJC_FIELD_SETTER(OrgScilabForgeJlatexmathMathAtom, base_, OrgScilabForgeJlatexmathAtom *)

FOUNDATION_EXPORT void OrgScilabForgeJlatexmathMathAtom_initWithOrgScilabForgeJlatexmathAtom_withInt_(OrgScilabForgeJlatexmathMathAtom *self, OrgScilabForgeJlatexmathAtom *base, jint style);

FOUNDATION_EXPORT OrgScilabForgeJlatexmathMathAtom *new_OrgScilabForgeJlatexmathMathAtom_initWithOrgScilabForgeJlatexmathAtom_withInt_(OrgScilabForgeJlatexmathAtom *base, jint style) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgScilabForgeJlatexmathMathAtom)

#endif // _OrgScilabForgeJlatexmathMathAtom_H_