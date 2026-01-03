#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

@interface KkkAppViewController : UIViewController
@end

@implementation KkkAppViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    WKWebView *web = [[WKWebView alloc] initWithFrame:self.view.bounds];
    web.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;

    NSURL *url = [NSURL URLWithString:@"https://shopclonevip.otzo.com"];
    [web loadRequest:[NSURLRequest requestWithURL:url]];

    [self.view addSubview:web];
}

@end