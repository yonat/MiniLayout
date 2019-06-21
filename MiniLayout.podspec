
Pod::Spec.new do |s|

  s.name         = "MiniLayout"
  s.version      = "1.4.1"
  s.summary      = "Minimal AutoLayout convenience layer. Program constraints succinctly."

  s.description  = <<-DESC
Usage:

```swift
view.addConstrainedSubview(label, constrain: .leading, .top)
view.constrain(textField, at: .leading, to: label, at: .trailing, diff: 8)
```
                   DESC

  s.homepage     = "https://github.com/yonat/MiniLayout"

  s.license      = { :type => "MIT", :file => "LICENSE.txt" }

  s.author             = { "Yonat Sharon" => "yonat@ootips.org" }
  s.social_media_url   = "http://twitter.com/yonatsharon"

  s.swift_version = '4.2'
  s.swift_versions = ['4.2', '5.0']
  s.platform     = :ios, "9.0"
  s.requires_arc = true

  s.source       = { :git => "https://github.com/yonat/MiniLayout.git", :tag => s.version }
  s.source_files  = "Sources/MiniLayout.swift"
end
