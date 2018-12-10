Pod::Spec.new do |s|
s.name         = "LPCommonModule"   #私有库的名称
s.version      = "1.1.0"   #版本号
s.summary      = "App基础,第三方pod等依赖"  #概述
s.description  = <<-DESC
App基础,第三方pod等依赖   #描述
DESC
s.homepage     = "https://github.com/Jacky-LinPeng/LPCommonModule"  #git上的地址
s.license      = { :type => "MIT", :file => "LICENSE" }   #许可证
s.author             = { "linpeng" => "540933120@qq.com" }   #作者名以及邮箱
s.platform     = :ios, "8.0"

s.source       = { :git => "https://github.com/Jacky-LinPeng/LPCommonModule.git", :tag => s.version.to_s }   #这个是git上   releases的代码，以后每次版本升级，都会传到这里

s.source_files  = "LPCommonModule/LPCommonModule/**/*.{h,m}"   #路径 前面的表示私有库名，后面表示私有库中的内容

s.public_header_files = 'LPCommonModule/LPCommonModule/**/*.h'

s.exclude_files = "Classes/Exclude"

s.requires_arc = true

s.dependency 'ReactiveCocoa','2.5'
s.dependency 'AFNetworking'
s.dependency 'YYModel'
s.dependency 'SDWebImage', '~> 5.0.0-beta3'
s.dependency 'Masonry', '~> 1.1.0'
s.dependency 'SVProgressHUD'
end
