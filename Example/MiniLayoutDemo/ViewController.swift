//
//  ViewController.swift
//  MiniLayoutDemo
//
//  Created by Yonat Sharon on 22.11.2016.
//  Copyright © 2016 Yonat Sharon. All rights reserved.
//

import MiniLayout
import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let cyanView = UIView()
        cyanView.backgroundColor = .cyan
        view.addConstrainedSubview(cyanView, constrain: .topMargin, .bottomMargin, .leadingMargin, .trailingMargin)

        let blueView = UIView()
        blueView.backgroundColor = .blue
        view.addConstrainedSubview(blueView, constrain: .centerX)
        blueView.constrain(.width, to: 100)
        view.constrain(blueView, at: .top, to: cyanView, at: .top, diff: 32)
        view.constrain(blueView, at: .bottom, to: cyanView, at: .bottom, diff: -32)

        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.view.constrain(blueView, at: .bottom, to: cyanView, at: .bottom, diff: -64)
        }
    }
}
