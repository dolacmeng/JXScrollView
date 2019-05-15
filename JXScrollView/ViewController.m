//
//  ViewController.m
//  JXScrollView
//
//  Created by JackXu on 16/4/17.
//  Copyright © 2016年 BFMobile. All rights reserved.
//

#import "ViewController.h"
#import "JXScrollView.h"

#define SCREENW [UIScreen mainScreen].bounds.size.width

@interface ViewController ()<JXScrollViewDataSource,JXScrollViewDelegate>{
    NSArray *imageArr;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpData];
    [self setUpView];
}

//初始化数据
-(void)setUpData{
    imageArr = @[@"http://pic1.win4000.com/wallpaper/2018-01-22/5a657f660f615.jpg",@"http://d.hiphotos.baidu.com/image/pic/item/a2cc7cd98d1001e9b230cf71ba0e7bec54e79744.jpg",@"http://img2.91huo.cn/game/2012/cj2012/lyl/4.jpg"];
    
}

//初始化视图
-(void)setUpView{
    JXScrollViewConfig *config = [JXScrollViewConfig defalutConfig];
//    config.pageControlPosition(JXScrollViewPageControlPositionRight).pageControlTintColor([UIColor redColor]).pageIndicatorSelectedTintColor([UIColor greenColor]);
    JXScrollView *scroll = [[JXScrollView alloc] initWithFrame:CGRectMake(0, 0, SCREENW, 200) config:config dataSource:self delegate:self];
    [self.view addSubview:scroll];
    [scroll start];
}

#pragma mark - 加载网络图片
-(NSInteger)numberOfItemInScrollView:(JXScrollView *)scrollView{
    return imageArr.count;
}

-(NSURL*)scrollView:(JXScrollView *)scrollView urlForItemAtIndex:(NSInteger)index{
    return [NSURL URLWithString:imageArr[index]];
}


#pragma mark - 加载本地图片
//-(NSInteger)numberOfItemInScrollView:(JXScrollView *)scrollView{
//    return 6;
//}
//
//-(UIImage*)scrollView:(JXScrollView *)scrollView imageForItemAtIndex:(NSInteger)index{
//    return [UIImage imageNamed:[NSString stringWithFormat:@"image%zd.jpg",index]];
//}

-(UIImage*)scrollView:(JXScrollView *)scrollView placeholderImageForIndex:(NSInteger)index{
    return [UIImage imageNamed:@"loading"];
}

-(void)scrollView:(JXScrollView *)scrollView didClickAtIndex:(NSInteger)index{
    NSLog(@"Click:%zd",index+1);
}



@end
