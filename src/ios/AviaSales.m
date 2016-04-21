#import "AviaSales.h"
#import "ASTSearchForm.h"
#import "AviaSalesSDK/AviaSalesSDK.h"

@implementation AviaSales

-(UIViewController*)findViewController
{
    id vc = self.webView;
    do {
        vc = [vc nextResponder];
    } while([vc isKindOfClass:UIView.class]);
    return vc;
}

-(void)setApiInfo:(CDVInvokedUrlCommand *)command
{
    NSString *marker = [command.arguments objectAtIndex:0];
    NSString *token = [command.arguments objectAtIndex:1];
    [[AviasalesSDK sharedInstance] setMarker:marker];
    [[AviasalesSDK sharedInstance] setAPIToken:token];
    CDVPluginResult *result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

-(void)SearchForm:(CDVInvokedUrlCommand *)command
{
    CDVPluginResult *result;

    UINavigationController *nc = [[AVIASALES_BUNDLE loadNibNamed:@"ASTMain" owner:self options:nil] objectAtIndex:1];

    UIViewController *vc = [self findViewController];
    [vc presentViewController:nc animated:YES completion:nil];
    
    result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

@end