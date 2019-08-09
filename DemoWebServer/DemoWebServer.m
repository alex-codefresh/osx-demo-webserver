#import "GCDWebServer.h"
#import "GCDWebServerDataResponse.h"

int main(int argc, const char* argv[]) {
  @autoreleasepool {

    GCDWebServer* webServer = [[GCDWebServer alloc] init];
    
    [webServer addDefaultHandlerForMethod:@"GET"
                             requestClass:[GCDWebServerRequest class]
                             processBlock:^GCDWebServerResponse *(GCDWebServerRequest* request) {
      
      return [GCDWebServerDataResponse responseWithHTML:@"<html><body><p>Hello World</p></body></html>"];
      
    }];
    
    [webServer runWithPort:8080 bonjourName:nil];
    NSLog(@"Visit %@ in your web browser", webServer.serverURL);
    
  }
  return 0;
}
