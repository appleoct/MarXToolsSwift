//
//  MarXToolsSwift_Example
//
//  Created by CodeRiding on 2018/7/13.
//  Copyright © 2018年 CocoaPods. All rights reserved.

import UIKit

@IBDesignable
public class MarXDesignTextField:UITextField {
    
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
    
    @IBInspectable public var placeHolderStr:String = ""{
        didSet{
            refreshUI();
        }
    }
    @IBInspectable public var placeHolderColor:UIColor = UIColor.red{
        didSet{
            refreshUI();
        }
    }
    
    @IBInspectable public var maxUTF8TextLen:CGFloat = -1{
        didSet{
            refreshUI();
        }
    }
    
    override public func prepareForInterfaceBuilder() {
        refreshUI();
    }
    
    public func refreshUI(){
        self.attributedPlaceholder =  NSAttributedString.init(string:placeHolderStr, attributes: [(kCTForegroundColorAttributeName as NSAttributedStringKey) : placeHolderColor]);
        
        self.removeTarget(self, action: #selector(textFieldDidChanged(_:)), for: UIControlEvents.editingChanged);
        self.addTarget(self, action: #selector(textFieldDidChanged(_:)), for: UIControlEvents.editingChanged);
        
        layer.cornerRadius = cornerRadius;
        layer.borderWidth = borderWidth
        layer.borderColor = borderColor.cgColor
    }
    
    @objc func textFieldDidChanged(_ textField:UITextField){
        if maxUTF8TextLen > 0 {
            let s:NSString = textField.text! as NSString
            if s.length > Int(maxUTF8TextLen) {
                
                textField.text = s.substring(to: Int(maxUTF8TextLen));
            }
        }
    }
}
