//
//  UIView+WLYExtension.swift
//  zhihuSwiftDemo
//
//  Created by Afluy on 16/8/8.
//  Copyright © 2016年 helios. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    var wly_height: CGFloat {
        return self.frame.size.height
    }
    
    var wly_width: CGFloat {
        return self.frame.size.width
    }
    
    var wly_center: CGPoint {
        return CGPoint(x: self.wly_width / 2, y: self.wly_height / 2)
    }
    
    var wly_y: CGFloat {
        
        get {
            return self.frame.origin.y
        }
        
        set {
            var frame = self.frame
            frame.origin.y = newValue
            self.frame = frame
        }
    }
}
