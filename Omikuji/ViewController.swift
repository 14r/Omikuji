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
        
        if number == 0 {
            label.text = String("大吉")
        }else if number <= 2 {
            label.text = String("中吉")
        }else if number <= 5 {
            label.text = String("吉")
        }else if number <= 8 {
            label.text = String("小吉")
        }else {
            label.text = String("凶")
        }
        
        if number == 0 {
            label.textColor = UIColor.redColor()
        } else {
            label.textColor = UIColor.yellowColor()
        }
        
    }
    
}