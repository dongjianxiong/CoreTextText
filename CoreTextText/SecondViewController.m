//
//  SecondViewController.m
//  CoreTextText
//
//  Created by founderbn on 14-12-14.
//  Copyright (c) 2014年 founderbn. All rights reserved.
//

#import "SecondViewController.h"
#import "FirstViewController.h"

@interface SecondViewController ()
@property (nonatomic, strong) UIWebView *myWebView;
@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.myWebView = [[UIWebView alloc]initWithFrame:self.view.frame];
    [self.view addSubview:_myWebView];
    [self loadWebView];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)loadWebView
{
    NSString *title=@"韩寒《后会无期》奇葩的吸金3秘籍";
    
    NSString *linkStr=[NSString stringWithFormat:@"<a href='%@'>我的博客</a> <a href='%@'>原文</a>",@"http://blog.csdn.net/wildcatlele",@"http://jincuodao.baijia.baidu.com/article/26059"];
    
    NSString *p1=@"韩寒《后会无期》的吸金能力很让我惊讶！8月12日影片票房已成功冲破6亿大关。而且排片量仍保持10 以上，以日收千万的速度稳步向七亿进军。";
    
    NSString *p2=@"要知道，《后会无期》不是主流类型片，是一个文艺片。不像《小时代》，是一个商业主流的偶像电影。";
    NSString *image1=[NSString stringWithFormat:@"<img src='%@'  height='280' width='300' />",@"http://nvren.so/uploads/allimg/c140801/140DR4554L40-YB9.jpg"];
    NSString *image2=[NSString stringWithFormat:@"<img src='%@'  height='280' width='300' />",@"http://f.hiphotos.baidu.com/news/w%3D638/sign=78315beeb1fb43161a1f797918a44642/2934349b033b5bb58cb61bdb35d3d539b600bcb5.jpg"];
    
    NSString *p3=@"太奇葩了！有人说，这是中国电影市场的红利，是粉丝电影的成功。但是，有一部投资3000万的粉丝电影《我就是我》，有明星，制作也不错，基本上是惨败。";
    
    NSString *p4=@"《后会无期》卖的不是好故事，是优越感。特别是针对80、90后的人群，你有没有发现，看《后会无期》比看《小时代3》有明显的优越感。故事虽然一般，但是很多人看完后，会在微博、微信上晒照片。所以说，对一个族群靠的不是广度，而是深度。<br>\
    \
    很凶残，值得大家借鉴。韩寒《后会无期》还有什么秘密武器，欢迎《后会无期》团队或相关方爆料，直接留言即可，有料的可以送黎万强亲笔签名的《参与感》一书。";
    
    //初始化和html字符串
    NSString *htmlURlStr=[NSString stringWithFormat:@"<body style='background-color:#EBEBF3'><h2>%@</h2><p>%@</p> <p>%@ </p>%@ <br><p> %@</p> <p>%@</p>%@<p>%@</p></body>",title,linkStr,p1,image1,p2,p3,image2,p4];
    
    [self.myWebView loadHTMLString:htmlURlStr baseURL:nil];
    
//
//    int (^lageNumber)(int a, int b)=^(int a, int b){
//        return a>b?a:b;
//    };
//    
//    printf("%d",lageNumber(23,45));
    
    
    
//    void (^linkTwoString)(char *str1, char *str2)= ^(char *str1, char *str2){
//       
//        char *p = str1;
//        while ((*p) != '\0') {
//            p++;
//        }
////        p = str2;
//        while (*str2 != '\0') {
//            *p = *str2;
//            p++;
//            str2++;
//        }
//
////        *p = '\0';
//        
//    };
    
//    char str2[] = {'1','3'};
//    char str1[] = {'2','4'};
//    
////    linkTwoString(str1,str2);
//    printf("%s",linkTwoString(str1,str2));

}

char * linkTwoString(char *str1, char *str2){

    if (!str1 && !str2) {
        return NULL;
    }else if(str1 && !str2){
        return str1;
    }else if (str2 && !str1){
        return str2;
    }
    
    char *p = str1;
    if (str1) {
        while (*p != '\0') {
            p++;
        }
    }
    *(p++) = '\0';
//    int count = 0;
    if (str2) {
        while (*str2 != '\0') {
            *p = *str2;
//            count++;
            p++;
            str2++;
        }
    }
    *p = '\0';
    return str1;
}

-(BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{
    
    NSString *urlStr=request.URL.absoluteString;
    
    NSLog(@"url: %@",urlStr);
    
    //为空，第一次加载本页面
    if ([urlStr isEqualToString:@"about:blank"]) {
        return YES;
    }
    
    //设置点击后的视图控制器
    FirstViewController *originalC=[[FirstViewController alloc] init];
    //跳转到点击后的控制器并加载webview
    [self.navigationController pushViewController:originalC animated:YES];
    
    return  NO;
}
//设置底部滚动不弹回
- (void)webViewDidFinishLoad:(UIWebView *)webView{
    NSInteger height = [[webView stringByEvaluatingJavaScriptFromString:@"document.body.offsetHeight;"] intValue];
    NSString* javascript = [NSString stringWithFormat:@"window.scrollBy(0, %ld);", (long)height];
    [webView stringByEvaluatingJavaScriptFromString:javascript];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
