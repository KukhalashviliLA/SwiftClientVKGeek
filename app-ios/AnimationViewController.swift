//
//  AnimationViewController.swift
//  app-ios
//
//  Created by Admin on 27.05.2020.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

class AnimationViewController: UIViewController {
    
    
    @IBOutlet weak var animationView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}

class AnimationCircle: UIControl {
    var circleOne = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
    let circleTwo = UIView(frame: CGRect(x: 25, y: 0, width: 20, height: 20))
    let circleThree = UIView(frame: CGRect(x: 50, y: 0, width: 20, height: 20))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        uisetup()
        Animation ()
    }
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        uisetup()
        Animation ()
    }
    
    func circle() {
        circleOne.layer.cornerRadius = circleOne.frame.width / 2
        circleTwo.layer.cornerRadius = circleTwo.frame.width / 2
        circleThree.layer.cornerRadius = circleThree.frame.width / 2
    }
    
    func uisetup() {
        circleOne.backgroundColor = .red
        circleTwo.backgroundColor = .green
        circleThree.backgroundColor = .blue
        circle()
        self.addSubview(circleOne)
        self.addSubview(circleTwo)
        self.addSubview(circleThree)
    }
    
    
    func Animation () {
        
        UIView.animate(withDuration: 0.9, delay: 0, options: [.repeat,], animations: {
            self.circleOne.alpha = 0.1
            })
        UIView.animate(withDuration: 0.9, delay: 0.3, options: [.repeat,], animations: {
            self.circleTwo.alpha = 0.1
            })
        UIView.animate(withDuration: 0.9, delay: 0.6, options: [.repeat,], animations: {
            self.circleThree.alpha = 0.1
            })

    }
    
}
