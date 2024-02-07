//
//  SPGradientView.swift
//  TakeHomeProject
//
//  Created by Sarthak Srivastava1 on 24/01/24.
//

import Foundation
import UIKit
@IBDesignable
class SPGradientView: UIView {

    var topColor : UIColor = #colorLiteral(red: 0.1725490196, green: 0.1882352941, blue: 0.2117647059, alpha: 1)
    var bottomColor: UIColor = #colorLiteral(red: 0.06666666667, green: 0.07058823529, blue: 0.0862745098, alpha: 1)
    
    var startPointX: CGFloat = 0
    var startPointY: CGFloat = 0
    var endPointX:CGFloat = 1
    var endPointY:CGFloat = 1
    
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor,bottomColor.cgColor]
        gradientLayer.startPoint = CGPoint(x:startPointX,y:startPointY)
        gradientLayer.endPoint = CGPoint(x: endPointX, y: endPointY)
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}
extension UIView {
    
  @IBInspectable var cornerRadius: CGFloat {
   get{
        return layer.cornerRadius
    }
    set {
        layer.cornerRadius = newValue
        layer.masksToBounds = newValue > 0
    }
  }

  @IBInspectable var borderWidth: CGFloat {
    get {
        return layer.borderWidth
    }
    set {
        layer.borderWidth = newValue
    }
  }

  @IBInspectable var borderColor: UIColor? {
    get {
        return UIColor(cgColor: layer.borderColor!)
    }
    set {
        layer.borderColor = newValue?.cgColor
    }
  }
}
