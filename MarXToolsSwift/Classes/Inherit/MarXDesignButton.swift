//
//  MarXToolsSwift_Example
//
//  Created by CodeRiding on 2018/7/14.
//  Copyright © 2018年 CocoaPods. All rights reserved.
//  可以storyb即时预览的UI设计控件

import UIKit

@IBDesignable
public class MarXDesignButton:UIButton{
    
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
    
    override public func prepareForInterfaceBuilder() {
        refreshUI();
    }
    
    func refreshUI(){
        layer.cornerRadius = cornerRadius;
        layer.borderWidth = borderWidth
        layer.borderColor = borderColor.cgColor
    }
    
    
}
