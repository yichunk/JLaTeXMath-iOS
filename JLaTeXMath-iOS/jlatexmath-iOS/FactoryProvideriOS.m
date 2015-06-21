//
//  FactoryProvideriOS.m
//  JLaTeXMath-iOS
//
//  Created by JackyKuo on 2015/6/21.
//  Copyright (c) 2015年 JackyKuo. All rights reserved.
//

#import "FactoryProvideriOS.h"
#import "GeomFactoryiOS.h"
#import "FontFactoryiOS.h"
#import "GraphicsFactoryiOS.h"
#import "ParserFactoryiOS.h"
#import "ResourceLoaderFactoryiOS.h"

@implementation FactoryProvideriOS

-(instancetype)init
{
    return self;
}

-(OrgScilabForgeJlatexmathPlatformFontFontFactory *)createFontFactory
{
    return [[FontFactoryiOS alloc] init];
}
-(OrgScilabForgeJlatexmathPlatformGeomGeomFactory *)createGeomFactory
{
    return [[GeomFactoryiOS alloc] init];
}
-(OrgScilabForgeJlatexmathPlatformGraphicsGraphicsFactory *)createGraphicsFactory
{
    return [[GraphicsFactoryiOS alloc] init];
}
-(OrgScilabForgeJlatexmathPlatformParserParserFactory *)createParserFactory
{
    return [[ParserFactoryiOS alloc] init];
}
-(id<OrgScilabForgeJlatexmathPlatformResourcesResourceLoaderFactory>)createResourceLoaderFactory
{
    return [[ResourceLoaderFactoryiOS alloc] init];
}
@end
