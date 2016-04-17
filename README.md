# JXScrollView
只要几行代码，快速集成轮播控件，支持本地图片和网络图片，支持点击事件，可定制播放速度、指示器颜色/位置、默认图等。

两步快速集成方法：
1.初始化：
JXScrollView *scroll = [[JXScrollView alloc] initWithFrame:CGRectMake(0, 0, SCREENW, 200)];
scroll.dataSource = self;
[self.view addSubview:scroll];
[scroll start];

2.实现数据源方法（至少实现以下两个）
#pragma mark - 数据源
//返回轮播图片数量
-(NSInteger)numberOfItemInScrollView:(JXScrollView *)scrollView{
    return imageArr.count;
}

//返回轮播的图片
-(NSURL*)scrollView:(JXScrollView *)scrollView urlForItemAtIndex:(NSInteger)index{
    return [NSURL URLWithString:imageArr[index]];
}
