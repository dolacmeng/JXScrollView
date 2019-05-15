Pod::Spec.new do |s|

  s.name         = "JXScrollView"
  s.version      = "1.0.0"
  s.summary      = "轮播控件"
  s.description  = "只要几行代码，快速集成轮播控件，支持本地图片和网络图片，支持点击事件，可定制播放速度、指示器颜色/位置、默认图等。"
  s.homepage     = "https://github.com/dolacmeng/JXScrollView"
  s.license      = 'MIT'
  s.author       = { "Jack" => "151611438@qq.com" }
  s.platform = :ios
  s.platform = :ios, "7.0"
  s.source       = { :git => "https://github.com/dolacmeng/JXScrollView.git", :tag => "1.0.0" }
  s.source_files  = "JXScrollView/JXScrollView/*"
  s.frameworks  = "UIKit","Foundation"
  s.requires_arc = true
  s.dependency 'SDWebImage'
end
