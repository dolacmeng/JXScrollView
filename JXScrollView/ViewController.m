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
    imageArr = @[@"http://www.2cto.com/meinv/uploads/160323/1-1603231U00M96.jpg",@"http://d.hiphotos.baidu.com/image/pic/item/a2cc7cd98d1001e9b230cf71ba0e7bec54e79744.jpg",@"http://img2.91huo.cn/game/2012/cj2012/lyl/4.jpg"];
    
}

//初始化视图
-(void)setUpView{
    JXScrollView *scroll = [[JXScrollView alloc] initWithFrame:CGRectMake(0, 0, SCREENW, 200)];
    scroll.pageControlTintColor = [UIColor grayColor];
    scroll.pageIndicatorSelectedTintColor = [UIColor redColor];
    scroll.dataSource = self;
    scroll.delegate = self;
    scroll.hideIndicator = YES;
    scroll.pageControlPosition = JXScrollViewPageControlPositionRight;
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
