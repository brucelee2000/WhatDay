//
//  ViewController.swift
//  WhatDay
//
//  Created by Yosemite on 1/2/15.
//  Copyright (c) 2015 Yosemite. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    
    @IBAction func displayDay(sender: UIButton) {
        // Grab date from DatePicker
        var chosenDate = datePicker.date
        
        // Create an NSDateFormatter
        var formatter = NSDateFormatter()
        formatter.dateFormat = "EEEE"
        
        // Grab the day and create a message
        let day = formatter.stringFromDate(chosenDate)
        let result = "That was a \(day)"
        
        // Create alert controller
        let myAlert = UIAlertController(title: result, message: nil, preferredStyle: UIAlertControllerStyle.Alert)
        
        // Add actions to alert controller
        myAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        
        // Show the alert
        self.presentViewController(myAlert, animated: true, completion: nil)
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

