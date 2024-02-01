//
//  UIViewExtension.swift
//  DesignProject
//
//  Created by Mustafa Kemal ARDA on 1.02.2024.
//

import Foundation
import UIKit


extension UIView {

    func setGradientColor() {

        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.purple.cgColor,UIColor.systemPink.cgColor,UIColor.systemYellow.cgColor]
        gradientLayer.startPoint = CGPointMake(0.0, 0.5)
        gradientLayer.endPoint = CGPointMake(1.0, 0.5)
        gradientLayer.locations = [0.1,0.2,0.2]
        gradientLayer.frame = self.bounds
        
        
        
        self.layer.insertSublayer(gradientLayer, at: 0)
   }
}
