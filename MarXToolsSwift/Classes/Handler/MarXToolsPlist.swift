//
//  MarXToolsPlist.swift
//  MarXToolsSwift_Example
//
//  Created by CodeRiding on 2018/7/12.
//  Copyright © 2018年 CocoaPods. All rights reserved.
//

import Foundation
import UIKit

public class MarXToolsPlist: NSObject {
    
    public func lws_readPlistByKey(pllistName:String ,key:String)->Any?{
        if let regPlist:String = Bundle.main.path(forResource: pllistName, ofType: "plist") {
            if let regDict:NSDictionary = NSDictionary.init(contentsOfFile: regPlist) {
                return  regDict[key];
            }else{
                print(">>>>没有发现RegisList.plist配置文件 !!");
            }
        }
        return nil;
    }
    
}
