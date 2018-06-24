Pod::Spec.new do |s|
  s.name = "ZSModule"
  s.version = "0.0.3"
  s.summary = "\u{6d4b}\u{8bd5}demo"
  s.license = {"type"=>"MIT", "file"=>"LICENSE"}
  s.authors = {"zhangguozhong"=>"494316382@qq.com"}
  s.homepage = "https://github.com/zhangguozhong/ZSModule.git"
  s.description = "\u{5c31}\u{662f}\u{7528}\u{6765}\u{6d4b}\u{8bd5}\u{7684}demo\u{ff0c}\u{6ca1}\u{6709}\u{4ec0}\u{4e48}\u{610f}\u{601d}\u{3002}"
  s.requires_arc = true
  s.source = { :path => '.' }

  s.ios.deployment_target    = '9.0'
  s.ios.vendored_framework   = 'ios/ZSModule.framework'
end
