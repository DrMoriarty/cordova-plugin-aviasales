#import <Cordova/CDV.h>

@interface AviaSales: CDVPlugin
{
    
}

-(void)setApiInfo:(CDVInvokedUrlCommand*)command;
-(void)SearchForm:(CDVInvokedUrlCommand*)command;

@end