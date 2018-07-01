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
view.constrain(label, at: .Leading, to: textField)
view.constrain(textField, at: .Top, to: label, at: .Bottom, diff: 8)
 
// without MiniLayout:
view.addConstraint( NSLayoutConstraint(item: label, attribute: .Leading, relatedBy: Equal, toItem: textField, attribute: .Leading, multiplier: 1, constant: 0) )
view.addConstraint( NSLayoutConstraint(item: textField, attribute: .Top, relatedBy: Equal, toItem: label, attribute: .Bottom, multiplier: 1, constant: 8) )
```

### Add button at the center of view

```swift
// using MiniLayout:
view.addConstrainedSubview(button, constrain: .CenterX, .CenterY)
 
// without MiniLayout:
view.addSubview(button)
button.setTranslatesAutoresizingMaskIntoConstraints(false)
view.addConstraint( NSLayoutConstraint(item: button, attribute: .CenterX, relatedBy: Equal, toItem: view, attribute: .CenterX, multiplier: 1, constant: 0) )
view.addConstraint( NSLayoutConstraint(item: button, attribute: .CenterY, relatedBy: Equal, toItem: view, attribute: .CenterY, multiplier: 1, constant: 0) )
```

## Requirements

- iOS 8.0+
- Xcode 7.3

## Installation

Using CocoaPods:

```ruby
pod 'MiniLayout'
```

For legacy Swift 2.3:

```ruby
pod 'MiniLayout', '~> 1.0.1'
```

Manually:

Add `MiniLayout.swift` to your project.

## Meta

[@yonatsharon](https://twitter.com/yonatsharon)

[https://github.com/yonat/MiniLayout](https://github.com/yonat/MiniLayout)

[swift-image]:https://img.shields.io/badge/swift-4.1-orange.svg
[swift-url]: https://swift.org/
[license-image]: https://img.shields.io/badge/License-MIT-blue.svg
[license-url]: LICENSE.txt
[travis-image]: https://img.shields.io/travis/dbader/node-datadog-metrics/master.svg?style=flat-square
[travis-url]: https://travis-ci.org/dbader/node-datadog-metrics
[codebeat-image]: https://codebeat.co/badges/c19b47ea-2f9d-45df-8458-b2d952fe9dad
[codebeat-url]: https://codebeat.co/projects/github-com-vsouza-awesomeios-com
