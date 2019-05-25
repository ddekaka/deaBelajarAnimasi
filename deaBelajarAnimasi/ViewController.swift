//
//  ViewController.swift
//  deaBelajarAnimasi
//
//  Created by Dea Khaerunnisa on 24/05/19.
//  Copyright © 2019 dea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let layerDea = CAGradientLayer()
        layerDea.frame = CGRect(x: 64, y: 64, width: 160, height: 160)
        layerDea.colors = [UIColor.red.cgColor, UIColor.black.cgColor]
        view.layer.addSublayer(layerDea)
        
        let rotateAnimation = CABasicAnimation()
        rotateAnimation.valueFunction = CAValueFunction(name: CAValueFunctionName.rotateZ)
        rotateAnimation.fromValue = 0
        rotateAnimation.toValue = Float.pi
        rotateAnimation.duration = 3
        layerDea.add(rotateAnimation, forKey: "transform")
    }


}

