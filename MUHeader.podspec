Pod::Spec.new do |s|
  s.name                      = "MUHeader"
  s.version                   = "1.0.0"
  s.summary                   = "MUHeader"
  s.homepage                  = "https://github.com/MoveUpwards/MUHeader"
  s.license                   = { :type => "MIT", :file => "LICENSE" }
  s.author                    = { "Move Upwards" => "contact@moveupwards.dev" }
  s.source                    = { :git => "https://github.com/MoveUpwards/MUHeader.git", :tag => s.version.to_s }
  s.swift_version             = "5.0"
  s.ios.deployment_target     = "9.0"
  s.source_files              = "Sources/**/*"
  s.frameworks                = "Foundation"
end
