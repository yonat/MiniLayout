
Pod::Spec.new do |s|

  s.name         = "MiniLayout"
  s.version      = "1.2.0"
  s.summary      = "Minimal AutoLayout convenience layer. Program constraints succinctly."

  s.description  = <<-DESC
Usage:

```swift
view.addConstrainedSubview(label, constrain: .Leading, .Top)
view.constrain(textField, at: .Leading, to: label, at: .Trailing, diff: 8)
```
                   DESC

  s.homepage     = "https://github.com/yonat/MiniLayout"

  s.license      = { :type => "MIT", :file => "LICENSE.txt" }

  s.author             = { "Yonat Sharon" => "yonat@ootips.org" }
  s.social_media_url   = "http://twitter.com/yonatsharon"

  s.swift_version = '4.0'
  s.platform     = :ios, "8.0"
  s.requires_arc = true

  s.source       = { :git => "https://github.com/yonat/MiniLayout.git", :tag => s.version }
  s.source_files  = "Sources/MiniLayout.swift"
end
