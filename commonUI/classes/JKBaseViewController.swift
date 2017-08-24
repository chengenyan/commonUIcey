//
//  JKBaseViewController.swift
//  4-WKWebView
//
//  Created by 蒋鹏 on 16/9/27.
//  Copyright © 2016年 蒋鹏. All rights reserved.
//

import UIKit
import Foundation


public class JKBaseViewController: UIViewController {
    lazy var dataArray = { return [AnyObject]() }()
    
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
    }
    
    deinit {
        NSLog("\(self.classForCoder)已释放")
    }
    
    
    open func jk_pushViewController(viewController: UIViewController) -> Void {
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    open func jk_popViewController(animated: Bool) -> Void {
        _ = self.navigationController?.popViewController(animated: animated)
    }

    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
