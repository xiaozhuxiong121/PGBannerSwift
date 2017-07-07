Pod::Spec.new do |s|
  s.name         = "PGBannerSwift"
  s.version      = "1.0"
  s.summary      = "Swift版的 自定义控件无限轮播 + 无限图片轮播。"
  s.homepage     = "https://github.com/xiaozhuxiong121/PGBanner-Swift"
  s.license      = "MIT"
  s.author       = { "piggybear" => "piggybear_net@163.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/xiaozhuxiong121/PGBanner-Swift.git", :tag => s.version }
  s.source_files = "PGBanner", "PGBanner.swift"
  s.frameworks   = "UIKit"
  s.requires_arc = true
end
 
