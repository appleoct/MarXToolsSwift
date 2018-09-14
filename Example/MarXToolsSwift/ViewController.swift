//
//  ViewController.swift
//  MarXToolsSwift
//
//  Created by codeRiding on 06/25/2018.
//  Copyright (c) 2018 codeRiding. All rights reserved.
//

import UIKit
import Toast_Swift

class ViewController: UIViewController {
    
    var vv:UIView?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let v = UIView.init()
        v.frame = CGRect.init(x: 50, y: 140, width: 200, height: 200)
        v.lws_cornerRadius = 8
        v.lws_borderWidth = 1
        v.lws_borderColor = UIColor.black
        view.addSubview(v)
        vv = v

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

         MarXToolsToast().lws_toasterCenterTime(msg: "网络异常,请稍后重试...", duration: 5000)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

