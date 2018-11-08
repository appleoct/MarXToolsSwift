//
//  MarXToolsSwift+Double.swift
//  MarXToolsSwift_Example
//
//  Created by CodeRiding on 2018/9/11.
//  Copyright © 2018年 CocoaPods. All rights reserved.
//

import UIKit

extension Double {
    public var lws_3DotNumberString:String
    {
        return String.init(format: "%.3f", self);
    }
    
    public var lws_2DotNumberString:String
    {
        return String.init(format: "%.2f", self);
    }
    
    public var lws_1DotNumberString:String
    {
        return String.init(format: "%.1f", self);
    }
    
    public var lws_0DotNumberString:String
    {
        return String.init(format: "%.0f", self);
    }
}
