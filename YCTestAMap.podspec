
Pod::Spec.new do |s|
  s.name             = 'YCTestAMap'
  s.version          = '0.1.0'
  s.summary          = '测试高德地图组件封装'
  
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC
                       
  s.homepage         = 'https://github.com/DanielOYC/YCTestAMap'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'DanielOYC' => '775350532@qq.com' }
  s.source           = { :git => 'https://github.com/DanielOYC/YCTestAMap.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  
  s.subspec 'YCTestLocationManager' do |ss|
     
     ss.source_files = 'YCTestAMap/Classes/*.{h,m}'
     
     ss.ios.vendored_frameworks = 'YCTestAMap/Classes/AMapSDKs/*.framework'
     
     ss.frameworks = 'CoreLocation','SystemConfiguration','Security','CoreTelephony','ExternalAccessory','GLKit'
     
     ss.libraries = 'c++','z'
     
     #ss.resource  = 'YCTestAMap/Classes/AMapSDKs/MAMapKit.framework/AMap.bundle'
     
     #ss.public_header_files = ''
     
     #ss.source_files = ''
  end
  
end
