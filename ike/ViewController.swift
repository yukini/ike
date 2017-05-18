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
    
    @IBOutlet weak var tankaLabel: UILabel!
    @IBOutlet weak var calcResult: UILabel!
    @IBOutlet weak var value: UILabel!
    @IBOutlet weak var okButton: UIButton!
    
    @IBAction func hello(_ sender: Any) {
        myLabel.text = "Hello"
    }
    
    @IBAction func thx(_ sender: Any) {
        myLabel.text = "Thank you"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tankaLabel.text = "-1.5"
        calcResult.text = "0.5"
        value.text = "これはテストです。\n改行とか明示的に書けるんだっけ？？"
        
        changeTextColor(label: tankaLabel)
        changeTextColor(label: calcResult)
        
        let myLabel2 = UILabel()
        myLabel2.text="Hello, hello?"
        
        myLabel2.frame=CGRect(x: 50, y: 100, width:200,height:21)
        
        //myLabel2.textColor=UIColor.black
        view.addSubview(myLabel2)
        
    }
    
    @IBAction func pushButton(_ sender: AnyObject){
        let num = arc4random_uniform(100)
        
        value.text=String(num)
        
        okButton.isEnabled=(num>10)
        print("OK")
    }
    
    func changeTextColor(label: UILabel!){
        guard let num = Double(label!.text!)else {
            return
        }
        if num>=0.0{
            label.textColor=UIColor.darkGray
            label.backgroundColor=UIColor.white
        }else{
            label.textColor=UIColor.brown
            label.backgroundColor=UIColor.darkGray
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

