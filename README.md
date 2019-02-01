# MiniLayout

Minimal AutoLayout convenience layer. Program constraints succinctly.

[![Swift Version][swift-image]][swift-url]
[![Build Status][travis-image]][travis-url]
[![License][license-image]][license-url]
[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/MiniLayout.svg)](https://img.shields.io/cocoapods/v/MiniLayout.svg)  
[![Platform](https://img.shields.io/cocoapods/p/MiniLayout.svg?style=flat)](http://cocoapods.org/pods/MiniLayout)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)

## Usage

### Put label over textField

```swift
// using MiniLayout:
view.constrain(label, at: .leading, to: textField)
view.constrain(textField, at: .top, to: label, at: .bottom, diff: 8)
 
// without MiniLayout:
view.addConstraint( NSLayoutConstraint(item: label, attribute: .leading, relatedBy: .equal, toItem: textField, attribute: .leading, multiplier: 1, constant: 0) )
view.addConstraint( NSLayoutConstraint(item: textField, attribute: .top, relatedBy: .equal, toItem: label, attribute: .bottom, multiplier: 1, constant: 8) )
```

### Add button at the center of view

```swift
// using MiniLayout:
view.addConstrainedSubview(button, constrain: .centerX, .centerY)
 
// without MiniLayout:
view.addSubview(button)
button.setTranslatesAutoresizingMaskIntoConstraints(false)
view.addConstraint( NSLayoutConstraint(item: button, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0) )
view.addConstraint( NSLayoutConstraint(item: button, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: 0) )
```

### Add child view controller covering all but the bottom margin

```swift
// using MiniLayout:
addConstrainedChild(vc, constrain: .bottomMargin, .top, .left, .right)
 
// without MiniLayout:
addChild(vc)
view.addSubview(vc.view)
vc.view.setTranslatesAutoresizingMaskIntoConstraints(false)
view.addConstraint( NSLayoutConstraint(item: vc.view, attribute: .bottomMargin, relatedBy: .equal, toItem: view, attribute: .bottomMargin, multiplier: 1, constant: 0) )
view.addConstraint( NSLayoutConstraint(item: vc.view, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 0) )
view.addConstraint( NSLayoutConstraint(item: vc.view, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: 0) )
view.addConstraint( NSLayoutConstraint(item: vc.view, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1, constant: 0) )
vc.didMove(toParent: self)

```

## Installation

Manually:

Add `MiniLayout.swift` to your project.

Using CocoaPods:

```ruby
pod 'MiniLayout'
```

Legacy versions:

| Swift version | MiniLayout version |
| :---: | :---: |
| 4.0 (Xcode 9.4) | `pod 'MiniLayout', '~> 1.2.1'` |
| 3 | `pod 'MiniLayout', '~> 1.1.0'` |
| 2.3 | `pod 'MiniLayout', '~> 1.0.1'` |

## Meta

[@yonatsharon](https://twitter.com/yonatsharon)

[https://github.com/yonat/MiniLayout](https://github.com/yonat/MiniLayout)

[swift-image]:https://img.shields.io/badge/swift-4.2-orange.svg
[swift-url]: https://swift.org/
[license-image]: https://img.shields.io/badge/License-MIT-blue.svg
[license-url]: LICENSE.txt
[travis-image]: https://img.shields.io/travis/dbader/node-datadog-metrics/master.svg?style=flat-square
[travis-url]: https://travis-ci.org/dbader/node-datadog-metrics
[codebeat-image]: https://codebeat.co/badges/c19b47ea-2f9d-45df-8458-b2d952fe9dad
[codebeat-url]: https://codebeat.co/projects/github-com-vsouza-awesomeios-com
