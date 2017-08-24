//
//  UIView+Factory.swift
//  commonUI
//
//  Created by apple on 2017/6/8.
//  Copyright © 2017年 apple. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
   public class func view(_ frame: CGRect, backgroundColor: UIColor) -> UIView {
        let view = UIView.init(frame: frame)
            view.backgroundColor = backgroundColor
        return view
    }
   public class func view(_ frame: CGRect, backgroundColor: UIColor,linecolor:UIColor,linewidth:CGFloat,cornerRadius:CGFloat) -> UIView {
        let view = UIView.init(frame: frame)
        view.backgroundColor = backgroundColor
        view.layer.borderColor=linecolor.cgColor
        view.layer.borderWidth=linewidth
        view.layer.cornerRadius=cornerRadius
        return view
    }
   public class func label(_ frame: CGRect, text: String?, textColor:UIColor, myfont: UIFont,linenumber:Int,duiqi:Int) -> UILabel {
        let label = UILabel.init(frame: frame)
            label.text = text
            label.textColor = textColor
            label.backgroundColor = UIColor.clear
            label.font = myfont
            label.numberOfLines = linenumber
            label.textAlignment=NSTextAlignment(rawValue: duiqi)!
       return label
    }
    
    
   public class func imageView(_ frame: CGRect, image: UIImage?) -> UIImageView {
        let imageView = UIImageView.init(frame: frame)
            imageView.image = image
            imageView.contentMode = .scaleAspectFit
            imageView.backgroundColor = UIColor.white
       return imageView
    }
    
    /// 普通Button
   public class func button(_ frame: CGRect, title: String?,titlecolor:UIColor,myfont: UIFont,backcolor:UIColor, target: Any?, action: Selector?)  -> UIButton {
        let button = UIButton.init(type: .custom)
            button.frame = frame
            button.isOpaque = true
            button.backgroundColor = backcolor
            if (action != nil) {
                button.addTarget(target, action: action!, for: .touchUpInside)
            }
            // button.showsTouchWhenHighlighted = true
            button.setTitle(title, for: .normal)
           button.setTitleColor(titlecolor, for: .normal)
            button.titleLabel?.font = myfont
        return button
    }
    
    ///   带背景图片+文字的Button
   public class func button(withFrame frame: CGRect, title: String?,titlecolor:UIColor, selectedText: String?, selectedcolor: UIColor,myfont: UIFont, backgroundImage: UIImage?, selectedBgImage: UIImage?, target: Any?, action: Selector?) -> UIButton {
        let button = UIButton.init(type: .custom)
            button.backgroundColor = UIColor.white
            button.isOpaque = true
            button.frame = frame
            if (action != nil) {
                button.addTarget(target, action: action!, for: .touchUpInside)
            }
            
        button.setTitle(title, for: .normal)
        button.setTitleColor(titlecolor, for: .normal)
        button.setTitle(selectedText, for: .selected)
        button.setTitleColor(selectedcolor, for: .selected)
            button.titleLabel?.font = myfont
            
        button.setBackgroundImage(backgroundImage?.withRenderingMode(.alwaysOriginal), for: .normal)
            button.setBackgroundImage(selectedBgImage?.withRenderingMode(.alwaysOriginal), for: .selected)
            button.imageView?.contentMode = .scaleAspectFit
        return button
    }
    
    ///   右图左文，大图要改成2x.3x用
   public class func button(_ frame: CGRect, title: String?, image: UIImage?, titleColor: UIColor, target: Any?, action: Selector?) -> UIButton {
        let button=UIButton.init(frame: frame)
            button.frame = frame
            button.backgroundColor = UIColor.white
            button.isOpaque = true
            if (action != nil) {
                button.addTarget(target, action: action!, for: .touchUpInside)
            }
            
            button.setTitle(title, for: .normal)
            button.setTitleColor(titleColor, for: .normal)
            button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
            
            button.imageView?.contentMode = .scaleAspectFit
            button.setImage(image?.withRenderingMode(.alwaysOriginal), for: .normal)
            
            // 开启后图片会高亮
            button.adjustsImageWhenHighlighted = false
            
            // 如果大图要改成2x.3x
            button.contentHorizontalAlignment = .left
            button.titleEdgeInsets = UIEdgeInsets.init(top: 0,
                                                       left: 5,
                                                       bottom: 0,
                                                       right: 0)
            
        return button
    }
    
    
    /// 带高亮图片，无文字
   public class func button(_ frame: CGRect, image: UIImage?, highlightImage: UIImage?, target: Any?, action: Selector?) -> UIButton {
        let button = UIButton.init(type: .custom)
            button.setImage(image?.withRenderingMode(.alwaysOriginal), for: .normal)
            button.setImage(highlightImage?.withRenderingMode(.alwaysOriginal), for: .highlighted)
            button.frame = frame
            button.backgroundColor = UIColor.white
            button.isOpaque = true
            
            if (action != nil) {
                button.addTarget(target, action: action!, for: .touchUpInside)
            }
            button.imageView?.contentMode = .scaleAspectFit
        return button
    }
    
    ///  带圆角边框的Button
   public class func roundedButton(_ frame: CGRect, title: String?, titleColor: UIColor?, backColor: UIColor, borderColor: UIColor,borderWidth:CGFloat, borderRaduis:CGFloat,myfont:UIFont, target: Any?, action: Selector?) -> UIButton {
        let button = UIButton.init(type: .custom)
            button.frame = frame
            if (action != nil) {
                button.addTarget(target, action: action!, for: .touchUpInside)
            }
            button.setTitle(title, for: .normal)
            button.setTitleColor(titleColor, for: .normal)
            button.titleLabel?.font = myfont
            button.backgroundColor=backColor
            button.layer.borderWidth=borderWidth
            button.layer.borderColor=borderColor.cgColor
            button.layer.cornerRadius=borderRaduis
           return button
    }
    /// 普通Button
   public class func buttonwithline(_ frame: CGRect, title: String?,titlecolor:UIColor, myfont: UIFont,backcolor:UIColor, target: Any?, action: Selector?)  -> UIButton {
        let button = UIButton.init(type: .custom)
        button.frame = frame
        button.isOpaque = true
        button.backgroundColor = backcolor
        if (action != nil) {
            button.addTarget(target, action: action!, for: .touchUpInside)
        }
        // button.showsTouchWhenHighlighted = true
        button.setTitleColor(titlecolor, for: .normal)
        button.titleLabel?.font = myfont
        let str=NSMutableAttributedString.init(string: title!)
        let strRange=NSRange.init(location: 0, length: str.length)
        let dict:NSDictionary=[NSUnderlineStyleAttributeName:NSNumber.init(integerLiteral: NSUnderlineStyle.styleSingle.rawValue),NSForegroundColorAttributeName:titlecolor,NSUnderlineColorAttributeName:titlecolor];
        str.addAttributes(dict as! [String : Any], range: strRange)
        button.setAttributedTitle(str, for: UIControlState.normal)
        return button
    }
   public class func textField(_ frame:CGRect,text:String,textColor:UIColor,placeholder:String,myfont:UIFont) -> UITextField {
        let textfield=UITextField.init(frame: frame)
        textfield.text=text
        textfield.placeholder=placeholder
        textfield.textColor=textColor
        textfield.font=myfont
        return textfield
    }
   public class func alert(titlestr:String,messagestr:String,selfvc:AnyObject?){
        let alertController = UIAlertController(title: titlestr,
                                                message: messagestr, preferredStyle: .alert)
//        let cancelAction = UIAlertAction(title: "取消", style: .cancel, handler: nil)
        let okAction = UIAlertAction(title: "确定", style: .default, handler: {
            action in
            print("点击了确定")
        })
//        alertController.addAction(cancelAction)
        alertController.addAction(okAction)
        selfvc?.present(alertController, animated: true, completion: nil)
    }
    

    
   
    
}
