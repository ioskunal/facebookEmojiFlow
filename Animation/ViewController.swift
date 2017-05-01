//
//  ViewController.swift
//  Animation
//
//  Created by Kunal Gupta on 01/05/17.
//  Copyright © 2017 Kunal Gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let transitionManager = TransitionManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func actionBtnAnimate(_ sender: Any) {
        var arrImages = ["sad","angry","haha","love","like","wow"]
        let totalSmileys = 200
        for _ in 0...totalSmileys {
            let image = UIImageView()
            let imageName = CGFloat(arc4random_uniform(5))
            image.image = UIImage.init(named: arrImages[Int(imageName)])
//            image.backgroundColor = UIColor.blue
            let size : CGFloat = CGFloat( arc4random_uniform(40))+20
            
            // set yPosition to be a random number between 20.0 and 220.0
            let yPosition : CGFloat = CGFloat( arc4random_uniform(UInt32(self.view.frame.height - CGFloat(64))))
            image.frame = CGRect(x: -size, y: yPosition, width: size, height: size)
            
            self.view.addSubview(image)
            let options : UIViewAnimationOptions = .curveEaseInOut
            let delay = TimeInterval(200 + arc4random_uniform(25000)) / 1000
            
            UIView.animate(withDuration: 1.5, delay: delay, options: options, animations: {
//                 let images = CGFloat(arc4random_uniform(5))
//                image.image = UIImage(named: arrImages[Int(images)])
//                image.backgroundColor = UIColor.red
                image.frame = CGRect(x: self.view.frame.width, y: yPosition, width: size, height: size)
                
            }) { (completed) in
                image.removeFromSuperview()
            }
        }
    }
    
}

