Pod::Spec.new do |spec|
  spec.name             = 'ACComponentPackTest'
  spec.version          = '1.0.1'
  spec.license          = { :type => 'MIT' }
  spec.homepage         = 'https://github.com/ColinAlanHB/podSwiftTest.git'
  spec.authors          = { 'xhuatang' => 'xhuatang@linewell.com' }
  spec.summary          = '城市通2.0 - 消息组件'
  spec.source           = { :git => 'https://github.com/ColinAlanHB/podSwiftTest.git', :tag => '1.0.1' }
  spec.requires_arc = true
  spec.swift_version = '4.0'
  spec.ios.deployment_target = '9.0'
  spec.source_files          = 'ACComponentPackTest/**/*.{m,h,swift}'
  spec.subspec 'ACComponentPackTestVendor' do |sss|
    # sss.ios.vendored_frameworks = 'Libs/GTSDK.framework'
     sss.ios.libraries           = 'c++','z','sqlite3'
  end
  spec.prepare_command = <<-EOF
# 创建Module
rm -rf Libs/GTSDK.framework/Modules
mkdir Libs/GTSDK.framework/Modules
touch Libs/GTSDK.framework/Modules/module.modulemap
cat <<-EOF > Libs/GTSDK.framework/Modules/module.modulemap
framework module GTSDK {
  umbrella header "GeTuiSdk.h"
  export *
  module * { export * }
  link "c++"
  link "z"
  link "sqlite3"
}
\EOF

EOF
  
  spec.dependency       'ACEngineLib'
  spec.dependency       'Alamofire'
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
