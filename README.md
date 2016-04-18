# JXScrollView
只要几行代码，快速集成轮播控件，支持本地图片和网络图片，支持点击事件，可定制播放速度、指示器颜色/位置、默认图等。

两步快速集成方法：
1.初始化：
JXScrollView *scroll = [[JXScrollView alloc] initWithFrame:CGRectMake(0, 0, SCREENW, 200)];\<br>
scroll.dataSource = self;\<br>
[self.view addSubview:scroll];\<br>
[scroll start];\<br>

2.实现数据源方法（至少实现以下两个）
//返回轮播图片数量
-(NSInteger)numberOfItemInScrollView:(JXScrollView *)scrollView{\<br>
    return imageArr.count;\<br>
}

//返回轮播的图片url
-(NSURL*)scrollView:(JXScrollView *)scrollView urlForItemAtIndex:(NSInteger)index{\<br>
    return [NSURL URLWithString:imageArr[index]];\<br>
}

效果：
![image](http://img.blog.csdn.net/20160418105818301)
