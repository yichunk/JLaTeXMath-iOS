//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/jacky/GSoC/GeoGebraiOSARC/GeoGebraiOSARC/javasources/org/scilab/forge/jlatexmath/parser/ParserFactoryiOS.java
//

#ifndef _ParserFactoryiOS_H_
#define _ParserFactoryiOS_H_

#include "J2ObjC_header.h"
#include "ParserFactory.h"

@protocol OrgScilabForgeJlatexmathPlatformParserParser;

@interface ParserFactoryiOS : OrgScilabForgeJlatexmathPlatformParserParserFactory

#pragma mark Public

- (instancetype)init;

- (id<OrgScilabForgeJlatexmathPlatformParserParser>)createParser;

@end

J2OBJC_EMPTY_STATIC_INIT(ParserFactoryiOS)

FOUNDATION_EXPORT void ParserFactoryiOS_init(ParserFactoryiOS *self);

FOUNDATION_EXPORT ParserFactoryiOS *new_ParserFactoryiOS_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ParserFactoryiOS)

typedef ParserFactoryiOS OrgScilabForgeJlatexmathParserParserFactoryiOS;

#endif // _ParserFactoryiOS_H_
