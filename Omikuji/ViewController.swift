//
//  ViewController.swift
//  Omikuji
//
//  Created by Arisa on 2016/07/05.
//  Copyright © 2016年 Arisa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label : UILabel!
    
    var omikujiArray: [UILabel]!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func gacha(){
        
        let number = Int(rand() % 10)
        
        var omikujiArray : [String] = ["大吉",
                                       "中吉",
                                       "中吉",
                                       "吉",
                                       "吉",
                                       "吉",
                                       "小吉",
                                       "小吉",
                                       "小吉",
                                       "凶"
        ]
        
        label.text = omikujiArray[number]
        
        if number == 0 {
            label.textColor = UIColor.redColor()
        } else {
            label.textColor = UIColor.yellowColor()
        }
        
    }
    
}