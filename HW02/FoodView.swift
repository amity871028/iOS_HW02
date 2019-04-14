//
//  FoodView.swift
//  HW02
//
//  Created by User04 on 2019/4/13.
//  Copyright © 2019 User04. All rights reserved.
//

import UIKit

class FoodView: UIImageView {
    override func layoutSubviews() {
        super.layoutSubviews()
        let path = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: 60, height: 60))
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        layer.mask = shapeLayer
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
