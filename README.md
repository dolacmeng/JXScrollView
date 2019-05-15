# JXScrollView

只要几行代码，快速集成轮播控件，支持本地图片和网络图片，支持点击事件，可定制播放速度、指示器颜色/位置、默认图等。

***
## Installation【安装】
### From CocoaPods【使用CocoaPods】
```
pod 'JXScrollView'
```

## Examples【示例】
两步快速集成方法：  
#### 1.初始化：   

```
JXScrollViewConfig *config = [JXScrollViewConfig defalutConfig];
JXScrollView *scroll = [[JXScrollView alloc] initWithFrame:CGRectMake(0, 0, SCREENW, 200) config:config dataSource:self delegate:self];
[self.view addSubview:scroll];
[scroll start];
``` 

#### 2.实现数据源方法（至少实现以下两个）   
```
//返回轮播图片数量   
-(NSInteger)numberOfItemInScrollView:(JXScrollView *)scrollView{
    return imageArr.count;     
}   

//返回轮播的图片url    
-(NSURL*)scrollView:(JXScrollView *)scrollView urlForItemAtIndex:(NSInteger)index{     
    return [NSURL URLWithString:imageArr[index]];     
}  
```




效果：    

![image](http://img.blog.csdn.net/20160418105818301)

#### 扩展
如果要修改PageControl在左边，选中颜色为红色，未选中为绿色。将初始化改为：

```
JXScrollViewConfig *config = [JXScrollViewConfig defalutConfig];
config.pageControlPosition(JXScrollViewPageControlPositionLeft).pageControlTintColor([UIColor redColor]).pageIndicatorSelectedTintColor([UIColor greenColor]);
JXScrollView *scroll = [[JXScrollView alloc] initWithFrame:CGRectMake(0, 0, SCREENW, 200) config:config dataSource:self delegate:self];
[self.view addSubview:scroll];
[scroll start];
```


[更多使用方法](http://blog.csdn.net/dolacmeng/article/details/51177765)    
