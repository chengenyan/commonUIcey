

Pod::Spec.new do |s|

 
  s.name         = "commonUI"
  s.version      = "1.0.4"
  s.summary      = "常用UI封装."

  s.description  = <<-DESC
                    私有Pods测试
                   DESC

  s.homepage     = "http://120.26.220.241/ccclubsiOS/commonUI"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


 

  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }



  s.author             = { "chengenyan" => "1562114410@qq.com" }




  s.source       = { :git => "http://120.26.220.241/ccclubsiOS/commonUI.git", :tag => "v#{s.version}" }


    s.platform     = :ios, '8.0'           #支持的平台及版本
    s.requires_arc = true                   #是否使用ARC，如果指定具体文件，则具体的问题使用ARC
    s.source_files  = "commonUI/classes/*.swift"    #OC可以使用类似这样"Classes/**/*.{h,m}"
    #s.source_files  = "commonUI", "commonUI/classes/*.{swift}"
    #s.exclude_files = "Classes/Exclude"

   #s.public_header_files = "commonUI/commonUI/classes/*.{swift}"


 
  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


 

  # s.framework  = "SomeFramework"
   s.frameworks = "UIKit"
    #s.dependency 'AFNetworking' 
  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
