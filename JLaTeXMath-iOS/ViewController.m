//
//  ViewController.m
//  JLaTeXMath-iOS
//
//  Created by JackyKuo on 2015/6/20.
//  Copyright (c) 2015年 JackyKuo. All rights reserved.
//

#import "ViewController.h"
#import "FactoryProvideriOS.h"
#import "ImageI.h"
#import "Graphics2DI.h"
#import "FactoryProvider.h"
#import "TeXFormula.h"
#import "TeXIcon.h"
#import "Graphics2DInterface.h"
#import "TeXConstants.h"
#import "Insets.h"
#import "ColorUtil.h"
#import <UIKit/UIKit.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    OrgScilabForgeJlatexmathPlatformFactoryProvider_set_INSTANCE_([[FactoryProvideriOS alloc] init]);
    NSString* latex1 = @"\\begin{array}{lr}\\mbox{\\textcolor{Blue}{Russian}}&\\mbox{\\textcolor{Melon}{Greek}}\\\\\\mbox{привет мир}&\\mbox{γειά κόσμο}\\\\\\mbox{привет мир}&\\mbox{γειά κόσμο}\\\\\\mathbf{\\mbox{привет мир}}&\\mathbf{\\mbox{γειά κόσμο}}\\\\\\mathit{\\mbox{привет мир}}&\\mathit{\\mbox{γειά κόσμο}}\\\\\\mathsf{\\mbox{привет мир}}&\\mathsf{\\mbox{γειά κόσμο}}\\\\\\mathtt{\\mbox{привет мир}}&\\mathtt{\\mbox{γειά κόσμο}}\\\\\\mathbf{\\mathit{\\mbox{привет мир}}}&\\mathbf{\\mathit{\\mbox{γειά κόσμο}}}\\\\\\mathbf{\\mathsf{\\mbox{привет мир}}}&\\mathbf{\\mathsf{\\mbox{γειά κόσμο}}}\\\\\\mathsf{\\mathit{\\mbox{привет мир}}}&\\mathsf{\\mathit{\\mbox{γειά κόσμο}}}\\\\&\\\\\\mbox{\\textcolor{Salmon}{Bulgarian}}&\\mbox{\\textcolor{Tan}{Serbian}}\\\\\\mbox{здравей свят}&\\mbox{Хелло уорлд}\\\\&\\\\\\mbox{\\textcolor{Turquoise}{Bielorussian}}&\\mbox{\\textcolor{LimeGreen}{Ukrainian}}\\\\\\mbox{прывітаньне Свет}&\\mbox{привіт світ}\\\\\\end{array}";
    NSString* latex2 = @"\\begin{array}{l}\\forall\\varepsilon\\in\\mathbb{R}_+^*\\ \\exists\\eta>0\\ |x-x_0|\\leq\\eta\\Longrightarrow|f(x)-f(x_0)|\\leq\\varepsilon\\\\\\det\\begin{bmatrix}a_{11}&a_{12}&\\cdots&a_{1n}\\\\a_{21}&\\ddots&&\\vdots\\\\\\vdots&&\\ddots&\\vdots\\\\a_{n1}&\\cdots&\\cdots&a_{nn}\\end{bmatrix}\\overset{\\mathrm{def}}{=}\\sum_{\\sigma\\in\\mathfrak{S}_n}\\varepsilon(\\sigma)\\prod_{k=1}^n a_{k\\sigma(k)}\\\\\\sideset{_\\alpha^\\beta}{_\\gamma^\\delta}{\\begin{pmatrix}a&b\\\\c&d\\end{pmatrix}}\\\\\\int_0^\\infty{x^{2n} e^{-a x^2}\\,dx} = \\frac{2n-1}{2a} \\int_0^\\infty{x^{2(n-1)} e^{-a x^2}\\,dx} = \\frac{(2n-1)!!}{2^{n+1}} \\sqrt{\\frac{\\pi}{a^{2n+1}}}\\\\\\int_a^b{f(x)\\,dx} = (b - a) \\sum\\limits_{n = 1}^\\infty  {\\sum\\limits_{m = 1}^{2^n  - 1} {\\left( { - 1} \\right)^{m + 1} } } 2^{ - n} f(a + m\\left( {b - a} \\right)2^{-n} )\\\\\\int_{-\\pi}^{\\pi} \\sin(\\alpha x) \\sin^n(\\beta x) dx = \\textstyle{\\left \\{ \\begin{array}{cc} (-1)^{(n+1)/2} (-1)^m \\frac{2 \\pi}{2^n} \\binom{n}{m} & n \\mbox{ odd},\\ \\alpha = \\beta (2m-n) \\\\ 0 & \\mbox{otherwise} \\\\ \\end{array} \\right .}\\\\L = \\int_a^b \\sqrt{ \\left|\\sum_{i,j=1}^ng_{ij}(\\gamma(t))\\left(\\frac{d}{dt}x^i\\circ\\gamma(t)\\right)\\left(\\frac{d}{dt}x^j\\circ\\gamma(t)\\right)\\right|}\\,dt\\\\\\begin{array}{rl} s &= \\int_a^b\\left\\|\\frac{d}{dt}\\vec{r}\\,(u(t),v(t))\\right\\|\\,dt \\\\ &= \\int_a^b \\sqrt{u'(t)^2\\,\\vec{r}_u\\cdot\\vec{r}_u + 2u'(t)v'(t)\\, \\vec{r}_u\\cdot\\vec{r}_v+ v'(t)^2\\,\\vec{r}_v\\cdot\\vec{r}_v}\\,\\,\\, dt. \\end{array}\\\\\\end{array}";
    OrgScilabForgeJlatexmathTeXFormula* formula = [[OrgScilabForgeJlatexmathTeXFormula alloc] initWithNSString:latex2];
    OrgScilabForgeJlatexmathTeXIcon* icon = [formula createTeXIconWithInt:OrgScilabForgeJlatexmathTeXConstants_STYLE_DISPLAY withFloat:20];
    [icon setInsetsWithOrgScilabForgeJlatexmathPlatformGraphicsInsets:[[OrgScilabForgeJlatexmathPlatformGraphicsInsets alloc] initWithInt:5 withInt:5 withInt:5 withInt:5]];
    ImageI* image = [[ImageI alloc] initWithWidth:[icon getIconWidth] withHeight:[icon getIconHeight]];
    id<OrgScilabForgeJlatexmathPlatformGraphicsGraphics2DInterface> g2 = [image createGraphics2D];
    [g2 setColorWithOrgScilabForgeJlatexmathPlatformGraphicsColor:OrgScilabForgeJlatexmathColorUtil_WHITE_];
    [g2 fillRectWithInt:0 withInt:0 withInt:[icon getIconWidth] withInt:[icon getIconHeight]];
    [g2 setColorWithOrgScilabForgeJlatexmathPlatformGraphicsColor:OrgScilabForgeJlatexmathColorUtil_BLACK_];
    
    
    [icon paintIconWithOrgScilabForgeJlatexmathPlatformGraphicsHasForegroundColor:nil withOrgScilabForgeJlatexmathPlatformGraphicsGraphics2DInterface:g2 withInt:0 withInt:0];
    UIImage* img = [[UIImage alloc] initWithCGImage:[image getImage]];
    UIImageView* imgView = [[UIImageView alloc] initWithFrame:CGRectMake(50, 50, [icon getIconWidth], [icon getIconHeight])];
    [imgView setImage:img];
    [self.view addSubview:imgView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
