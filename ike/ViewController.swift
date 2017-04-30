//
//  ViewController.swift
//  ike
//
//  Created by yukini on 2017/04/27.
//  Copyright © 2017年 yukini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBAction func hello(_ sender: Any) {
        myLabel.text = "Hello"
    }
    
    @IBAction func thx(_ sender: Any) {
        myLabel.text = "Thank you"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

