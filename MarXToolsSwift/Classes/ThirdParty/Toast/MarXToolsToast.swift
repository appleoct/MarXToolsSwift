//
//  MarXToolsToast.swift
//  MarXToolsSwift_Example
//
//  Created by CodeRiding on 2018/7/13.
//  Copyright © 2018年 CocoaPods. All rights reserved.
//

import Foundation
import Toast_Swift
import Toaster

public var kMarXToolsToastDefaultTime = 0.5

extension UIView {
    private func lws_makeToast(msg:String) {
        self.makeToast(msg)
    }
    
    private func lws_makeToast(msg:String,duration:TimeInterval,point:CGPoint,title:String,image:UIImage) {
        let style = ToastStyle()
        self.makeToast(msg, duration: duration, point: point, title: title, image: image, style: style) { (isBool) in
            
        }
        
    }
    
    
    
    private func lws_makeToastTopDefaultTime(msg:String){
        lws_makeToast(msg: msg, duration: kMarXToolsToastDefaultTime, position: .top)
    }
    
    private func lws_makeToastCenterDefaultTime(msg:String){
        lws_makeToast(msg: msg, duration: kMarXToolsToastDefaultTime, position: .center)
    }
    
    private func lws_makeToastBottomDefaultTime(msg:String){
        lws_makeToast(msg: msg, duration: kMarXToolsToastDefaultTime, position: .bottom)
    }
    
    
    
    private func lws_makeToastTop(msg:String,duration:TimeInterval){
        lws_makeToast(msg: msg, duration: duration, position: .top)
    }
    
    private func lws_makeToastCenter(msg:String,duration:TimeInterval){
        lws_makeToast(msg: msg, duration: duration, position: .center)
    }
    
    private func lws_makeToastBottom(msg:String,duration:TimeInterval){
        lws_makeToast(msg: msg, duration: duration, position: .bottom)
    }
    
    func lws_makeToast(msg:String,duration:TimeInterval,position:ToastPosition){
        let style = ToastStyle()
        self.makeToast(msg, duration: duration, position: position, style: style)
    }
    
    
    private func lws_hideAllToast() {
        self.hideAllToasts()
    }
    
    private func lws_hideToast() {
        self.hideToast()
    }
    
    private func lws_hideToastActivity() {
        self.hideToastActivity()
    }
    
    private func lws_showToastActivity(point:CGPoint) {
        self.makeToastActivity(point)
    }
    
    private func lws_showToastCenterActivity() {
        self.makeToastActivity(.center)
    }
    
    
   
}


public class MarXToolsToast: NSObject {
    public func lws_toasterTopDefaultTime(msg:String){
        lws_toasterTopTime(msg: msg, duration: kMarXToolsToastDefaultTime)
    }
    
    public func lws_toasterCenterDefaultTime(msg:String){
        lws_toasterCenterTime(msg: msg, duration: kMarXToolsToastDefaultTime)
    }
    
    public func lws_toasterBottomDefaultTime(msg:String){
        lws_toasterBottomTime(msg: msg, duration: kMarXToolsToastDefaultTime)
    }
    
    public func lws_toasterTopTime(msg:String,duration:TimeInterval){
        lws_toasterTime(msg: msg, duration: duration, offset: (UIApplication.shared.keyWindow!.bounds.size.height - 84))
    }
    
    public func lws_toasterCenterTime(msg:String,duration:TimeInterval){
        lws_toasterTime(msg: msg, duration: duration, offset: (UIApplication.shared.keyWindow!.bounds.size.height / 2))
    }
    
    public func lws_toasterBottomTime(msg:String,duration:TimeInterval){
        lws_toasterTime(msg: msg, duration: duration, offset: (84))
    }
    
    private func lws_toasterTime(msg:String,duration:TimeInterval,offset:CGFloat){
        if (UIApplication.shared.keyWindow != nil) {
            /// 下面的样式是根据自己的喜好调的
            ToastView.appearance().bottomOffsetPortrait = CGFloat(offset)
            ToastView.appearance().font  = UIFont.systemFont(ofSize: 16)
            ToastView.appearance().backgroundColor = UIColor.init(red: 220.0/255.0, green: 220.0/255.0, blue: 220.0/255.0, alpha: 1)
            ToastView.appearance().textColor = UIColor.init(red: 80.0/255.0, green:80.0/255.0, blue:80.0/255.0, alpha: 0.9)
        }
        
        ToastCenter.default.cancelAll()
        Toast(text: msg, duration: duration).show()
    }
}

