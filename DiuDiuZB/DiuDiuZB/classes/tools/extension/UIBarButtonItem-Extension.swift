//
//  UIBarButtonItem.swift
//  DiuDiuZB
//
//  Created by 范小丢 on 2021/1/18.
//

import UIKit

extension UIBarButtonItem{
    class func createItem(imageName : String, highImageName : String = "", size : CGSize = CGSize.zero) -> UIBarButtonItem{
        let btn = UIButton()
        btn.setImage(UIImage(named: imageName), for : .normal)
        btn.setImage(UIImage(named: highImageName), for: .highlighted)
        btn.frame = CGRect(origin: CGPoint.zero, size: size)
        return UIBarButtonItem(customView: btn)
    }
    //便利构造函数 1>convenience开头 2>在构造函数中必须明确调用一个设计的构造函数（self)
    convenience init(imageName : String, highImageName :  String = "", size : CGSize = CGSize.zero) {
        let btn = UIButton()
        btn.setImage(UIImage(named: imageName), for : .normal)
        if highImageName != "" {
            btn.setImage(UIImage(named: highImageName), for: .highlighted)
        }
        if size != CGSize.zero {
            btn.frame = CGRect(origin: CGPoint.zero, size: size)
        }else{
            btn.sizeToFit()
        }
        
        
        self.init(customView : btn)
    }
}
