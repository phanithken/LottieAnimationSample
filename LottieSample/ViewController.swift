//
//  ViewController.swift
//  LottieSample
//
//  Created by Ken Phanith on 2018/06/01.
//  Copyright © 2018 Quad. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        let animationView = LOTAnimationView(name: "favourite_app_icon")
        animationView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        animationView.center = self.view.center
        animationView.contentMode = .scaleAspectFill
        animationView.loopAnimation = true
        animationView.animationSpeed = 0.5
        
        view.addSubview(animationView)
        animationView.play()
        
        let timing = UICubicTimingParameters(animationCurve: .easeInOut)
        let animator = UIViewPropertyAnimator(duration: 2.0, timingParameters: timing)
        
        animator.addAnimations {
            animationView.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        }
        
        animator.addCompletion {_ in
            animationView.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        }
        
        animator.startAnimation(afterDelay: 0.3)
        
    }

}

