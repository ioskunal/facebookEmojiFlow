//
//  ViewController.swift
//  Animation
//
//  Created by Kunal Gupta on 01/05/17.
//  Copyright © 2017 Kunal Gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewReactions: KRReactionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func actionBtnAnimate(_ sender: Any) {
        var dict = [String:Int]()
        dict = [
            "sad":5,
            "angry":4,
            "haha":4,
            "love":9,
            "like":2,
            "wow":1
        ]
        viewReactions.startflowing(dict: dict)
    }
    
}

