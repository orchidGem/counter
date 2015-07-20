//
//  ViewController.swift
//  Click Counter
//
//  Created by Laura Evans on 7/20/15.
//  Copyright (c) 2015 Ivie Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label:UILabel!
    var labelSecond:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Label
        var label = UILabel()
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "0"
        self.view.addSubview(label)
        self.label = label
        
        //Second Label
        var labelSecond = UILabel()
        labelSecond.frame = CGRectMake(210, 150, 60, 60)
        labelSecond.text = "0"
        self.view.addSubview(labelSecond)
        self.labelSecond = labelSecond
        
        // Incremement Button
        var addButton = UIButton()
        addButton.frame = CGRectMake(50, 250, 60, 60)
        addButton.setTitle("Add", forState: .Normal)
        addButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        addButton.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(addButton)
        
        addButton.addTarget(self, action: "incremementCount", forControlEvents: UIControlEvents.TouchUpInside)
        
        
        //Decrement Button
        var minusButton = UIButton()
        minusButton.frame = CGRectMake(200, 250, 120, 60)
        minusButton.setTitle("Subtract", forState: .Normal)
        minusButton.setTitleColor(UIColor.redColor(), forState: .Normal)
        minusButton.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(minusButton)
        
        minusButton.addTarget(self, action: "decrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        
        
    }
    func incremementCount(){
        self.count++
        self.label.text = "\(self.count)"
        self.labelSecond.text = "\(self.count)"
        self.view.backgroundColor = UIColor.blueColor()
    }
    func decrementCount(){
        self.count--
        self.label.text = "\(self.count)"
        self.labelSecond.text = "\(self.count)"
        self.view.backgroundColor = UIColor.redColor()
    }
}

