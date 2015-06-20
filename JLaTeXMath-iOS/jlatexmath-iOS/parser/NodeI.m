//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/jacky/GSoC/JLaTeXMath-iOS/JLaTeXMath-iOS/javasource/org/scilab/forge/jlatexmath/parser/NodeI.java
//


#include "J2ObjC_source.h"
#include "org/scilab/forge/jlatexmath/parser/AttrI.h"
#include "org/scilab/forge/jlatexmath/parser/ElementI.h"
#include "org/scilab/forge/jlatexmath/parser/NodeI.h"
#include "org/scilab/forge/jlatexmath/platform/parser/Attr.h"
#include "org/scilab/forge/jlatexmath/platform/parser/Element.h"
#include "org/w3c/dom/Attr.h"
#include "org/w3c/dom/Element.h"
#include "org/w3c/dom/Node.h"

@interface NodeI () {
 @public
  id<OrgW3cDomNode> impl_;
}

@end

J2OBJC_FIELD_SETTER(NodeI, impl_, id<OrgW3cDomNode>)

@implementation NodeI

- (instancetype)initWithOrgW3cDomNode:(id<OrgW3cDomNode>)impl {
  NodeI_initWithOrgW3cDomNode_(self, impl);
  return self;
}

- (jshort)getNodeType {
  return [((id<OrgW3cDomNode>) nil_chk(impl_)) getNodeType];
}

- (id<OrgScilabForgeJlatexmathPlatformParserElement>)castToElement {
  return [new_ElementI_initWithOrgW3cDomElement_((id<OrgW3cDomElement>) check_protocol_cast(impl_, @protocol(OrgW3cDomElement))) autorelease];
}

- (id<OrgScilabForgeJlatexmathPlatformParserAttr>)castToAttr {
  return [new_AttrI_initWithOrgW3cDomAttr_((id<OrgW3cDomAttr>) check_protocol_cast(impl_, @protocol(OrgW3cDomAttr))) autorelease];
}

- (void)dealloc {
  RELEASE_(impl_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgW3cDomNode:", "NodeI", NULL, 0x1, NULL, NULL },
    { "getNodeType", NULL, "S", 0x1, NULL, NULL },
    { "castToElement", NULL, "Lorg.scilab.forge.jlatexmath.platform.parser.Element;", 0x1, NULL, NULL },
    { "castToAttr", NULL, "Lorg.scilab.forge.jlatexmath.platform.parser.Attr;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "impl_", NULL, 0x2, "Lorg.w3c.dom.Node;", NULL, NULL,  },
  };
  static const J2ObjcClassInfo _NodeI = { 2, "NodeI", "org.scilab.forge.jlatexmath.parser", NULL, 0x1, 4, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_NodeI;
}

@end

void NodeI_initWithOrgW3cDomNode_(NodeI *self, id<OrgW3cDomNode> impl) {
  NSObject_init(self);
  NodeI_set_impl_(self, impl);
}

NodeI *new_NodeI_initWithOrgW3cDomNode_(id<OrgW3cDomNode> impl) {
  NodeI *self = [NodeI alloc];
  NodeI_initWithOrgW3cDomNode_(self, impl);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NodeI)
