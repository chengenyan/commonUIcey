//
//  String+Extension.swift
//  commonUI
//
//  Created by apple on 2017/6/8.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit
extension String {
    
  
    
   public func hexValue() -> Int {
        let str = self.uppercased()
        var sum = 0
        for i in str.utf8 {
            sum = sum * 16 + Int(i) - 48 // 0-9 从48开始
            if i >= 65 {                 // A-Z 从65开始，但有初始值10，所以应该是减去55
                sum -= 7
            }
        }
        return sum
    }
    
    
    
    
   public func size(withFont font: UIFont, maxWidth: CGFloat) -> CGSize {
        let paragraphStyle = NSMutableParagraphStyle.init()
        paragraphStyle.lineBreakMode = .byWordWrapping
        paragraphStyle.alignment = .left
        paragraphStyle.lineSpacing = 5
        paragraphStyle.paragraphSpacing = 0
        let attributes = [NSFontAttributeName: font, NSParagraphStyleAttributeName: paragraphStyle] as [String : Any]
        
        let string = self as NSString
        let newSize = string.boundingRect(with: CGSize.init(width: maxWidth, height: CGFloat(MAXFLOAT)), options: NSStringDrawingOptions.usesLineFragmentOrigin,
                                          attributes: attributes,
                                          context: nil).size
        return CGSize.init(width: CGFloat(ceilf(Float(newSize.width))), height: newSize.height)
    }
    
    /// URL编码
   public func stringByAddingPercentEncoding() -> String {
        return self.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)!
    }
  public  func stringwithnull(str:String) -> String {
        //        if (str.isEmpty || str=="" || str=="null" || str="<null>" || str=="(null)") {
        //            return ""
        //        }
        return str.isEmpty ? "" : (str=="null" ? "":(str=="<null>") ? "" : (str=="(null)" ? "" : str))
    }
}
