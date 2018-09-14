//
//  MarXToolsSwift+UIImage.swift
//  MarXToolsSwift_Example
//
//  Created by CodeRiding on 2018/7/26.
//  Copyright © 2018年 CocoaPods. All rights reserved.
//

import Foundation
import UIKit

extension UIImage {
    public func lws_stretchableImage() -> UIImage {
        let leftCapWidth: Int = Int(self.size.width / 2)    // 取图片Width的中心点
        let topCapHeight: Int = Int(self.size.height / 2)   // 取图片Height的中心点
        return stretchableImage(withLeftCapWidth: leftCapWidth, topCapHeight: topCapHeight) // 拉伸
    }

}
