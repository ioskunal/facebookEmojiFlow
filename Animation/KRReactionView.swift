//
//  KRReactionView.swift
//  Animation
//
//  Created by Kunal Gupta on 01/05/17.
//  Copyright © 2017 Kunal Gupta. All rights reserved.
//

import UIKit

class KRReactionView: UIView {
    
    func startflowing(dict:[String:Int]){
        
        var arrNames = [String]()
        
        for (key,value) in dict{
            for _ in 0..<value{
                arrNames.append(key)
            }
        }
        
        for _ in 0..<arrNames.count{
            let random = Int(arc4random_uniform(UInt32(arrNames.count)))
            
            let image = UIImageView()
            image.image = UIImage(named: arrNames[random])
            
            let size : CGFloat = CGFloat( arc4random_uniform(40))+20
            
            let yPosition : CGFloat = CGFloat( arc4random_uniform(UInt32(self.frame.height)))
            image.frame = CGRect(x: -size, y: yPosition, width: size, height: size)
            
            self.addSubview(image)
            let options : UIViewAnimationOptions = [.curveEaseInOut,.repeat]
            let delay = TimeInterval(200 + arc4random_uniform(UInt32( arrNames.count * 100))) / 1000
            UIView.animate(withDuration: 1.5, delay: delay, options: options, animations: {
                image.frame = CGRect(x: self.frame.width, y: yPosition, width: size, height: size)
            }) { (completed) in
                image.removeFromSuperview()
            }
            arrNames.remove(at: random)
        }
    }
}
