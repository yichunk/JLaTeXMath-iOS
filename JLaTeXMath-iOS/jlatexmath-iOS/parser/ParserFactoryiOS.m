//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/jacky/GSoC/JLaTeXMath-iOS/JLaTeXMath-iOS/javasource/org/scilab/forge/jlatexmath/parser/ParserFactoryiOS.java
//


#include "J2ObjC_source.h"
#include "org/scilab/forge/jlatexmath/parser/ParserFactoryiOS.h"
#include "org/scilab/forge/jlatexmath/parser/ParserI.h"
#include "org/scilab/forge/jlatexmath/platform/parser/Parser.h"
#include "org/scilab/forge/jlatexmath/platform/parser/ParserFactory.h"

@implementation ParserFactoryiOS

- (id<OrgScilabForgeJlatexmathPlatformParserParser>)createParser {
  return [new_ParserI_init() autorelease];
}

- (instancetype)init {
  ParserFactoryiOS_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "createParser", NULL, "Lorg.scilab.forge.jlatexmath.platform.parser.Parser;", 0x1, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _ParserFactoryiOS = { 2, "ParserFactoryiOS", "org.scilab.forge.jlatexmath.parser", NULL, 0x1, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ParserFactoryiOS;
}

@end

void ParserFactoryiOS_init(ParserFactoryiOS *self) {
  OrgScilabForgeJlatexmathPlatformParserParserFactory_init(self);
}

ParserFactoryiOS *new_ParserFactoryiOS_init() {
  ParserFactoryiOS *self = [ParserFactoryiOS alloc];
  ParserFactoryiOS_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ParserFactoryiOS)