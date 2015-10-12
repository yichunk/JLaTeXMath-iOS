//
//  FontI.h
//  JLaTeXMath-iOS
//
//  Created by JackyKuo on 2015/6/20.
//  Copyright (c) 2015年 JackyKuo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Font.h"
#import <CoreText/CoreText.h>
@interface FontI : NSObject <OrgScilabForgeJlatexmathPlatformFontFont>
{
    int size;
    int style;
}
-(id)initWithName:(NSString*)name withStyle:(int)style withSize:(int)s;
@property CTFontRef mCTFont;
@end
