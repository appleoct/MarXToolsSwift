//
//  MarXToolsFastClickButton.swift
//  MarXToolsSwift_Example
//
//  Created by CodeRiding on 2018/7/13.
//  Copyright © 2018年 CocoaPods. All rights reserved.
//  描述：防止快速点击的按钮继承类

import Foundation
import UIKit

class MarXToolsFastClickButton: UIButton {
    
    private (set) var amountOfTouches: Int = 0 {
        didSet {
            if self.amountOfTouches >= 1 {
                self.isEnabled = false
                self.isUserInteractionEnabled = false
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.amountOfTouches += 1
    }
    
    
}
