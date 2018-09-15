//
//  MarXToolsSwift_Example
//
//  Created by CodeRiding on 2018/7/13.
//  Copyright © 2018年 CocoaPods. All rights reserved.
//  可以storyb即时预览的UI设计控件

import UIKit

@IBDesignable
public class MarXDesignView:UIView{
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    required public init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    
    @IBInspectable public var cornerRadius:CGFloat = 0 {
        didSet{
            refreshUI();
        }
    }
    @IBInspectable public var borderWidth:CGFloat = 0 {
        didSet{
            refreshUI();
        }
    }
    @IBInspectable public var borderColor:UIColor = UIColor.clear {
        didSet{
            refreshUI();
        }
    }
    
    @IBInspectable public var shadowOffset:CGSize = CGSize.zero {
        didSet{
            refreshUI();
        }
    }
    
    @IBInspectable public var shadowColor:UIColor = UIColor.clear {
        didSet{
            refreshUI();
        }
    }
    @IBInspectable public var shadowOpacity:CGFloat = 0 {
        didSet{
            refreshUI();
        }
    }
    
    @IBInspectable public var shadowRadius:CGFloat = 0 {
        didSet{
            refreshUI();
        }
    }
    
    override public func prepareForInterfaceBuilder() {
        refreshUI();
    }
    
    func refreshUI(){
        layer.cornerRadius = cornerRadius;
        layer.borderWidth = borderWidth;
        layer.borderColor = borderColor.cgColor;
        
        layer.shadowOffset = shadowOffset;
        layer.shadowColor = shadowColor.cgColor;
        layer.shadowOpacity = Float(shadowOpacity);//阴影透明度，默认0
        layer.shadowRadius = shadowRadius;//阴影半径，默认3
        
    }
}
