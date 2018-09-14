//
//  MarXToolsUserDefault.swift
//  MarXToolsSwift_Example
//
//  Created by CodeRiding on 2018/7/12.
//  Copyright © 2018年 CocoaPods. All rights reserved.
//

import Foundation
import UIKit

public class MarXToolsUserDefault: NSObject {
    
    /// 通过key保存值
    public static func lws_saveKey(_ k:String,v:String)->Void{
        UserDefaults.standard.set(v, forKey: k);
    }
    
    /// 通过key取值
    public static func lws_loadKey(_ k:String)->String?{
        return UserDefaults.standard.string(forKey: k);
    }
    
}
