Pod::Spec.new do |spec|
  spec.name             = 'ACComponentItemLib'
  spec.version          = '2.0.0'
  spec.license          = { :type => 'MIT' }
  spec.homepage         = 'http://192.168.202.61:19090/root/linewell-specs'
  spec.authors          = { 'xhuatang' => 'xhuatang@linewell.com' }
  spec.summary          = '城市通2.0 - 公共库'
  spec.source           = { :git => 'git@192.168.202.61:root/ACComponentItemLib.git', :tag => '2.0.0' }
  spec.source_files     = 'ACComponentItemLib/**/*.{m,h,swift}'
  spec.pod_target_xcconfig = { 
      'SWIFT_ACTIVE_COMPILATION_CONDITIONS'  => 'PERMISSION_CAMERA PERMISSION_LOCATION'
  }
  spec.swift_version = '4.0'
  spec.requires_arc = true
  spec.frameworks = 'UIKit'
  spec.ios.deployment_target = '9.0'
#  spec.osx.deployment_target = '10.11'
#  spec.tvos.deployment_target = '9.0'
#  spec.ios.deployment_target = '9.0'
#  spec.static_framework = true
  spec.dependency       'Alamofire',:modular_headers => true
  spec.dependency       'SDCycleScrollView'
  spec.dependency       'HandyJSON'
  spec.dependency       'SwiftyJSON'
  spec.dependency       'SnapKit'
  spec.dependency       'TZImagePickerController'
  spec.dependency       'AliyunOSSiOS'
  spec.dependency       'Mozi'
  spec.dependency       'JLRoutes'
  spec.dependency       'MJRefresh'
  spec.dependency       'WZLBadge'
  spec.dependency       'Arcane'
  spec.dependency       'XHLaunchAd'
end
