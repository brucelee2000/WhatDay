//
//  ViewController.swift
//  WhatDay
//
//  Created by Yosemite on 1/2/15.
//  Copyright (c) 2015 Yosemite. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

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
    
    let moodArray = ["Happy", "Sad", "Maudlin", "Ecstatic", "Overjoyed", "Optimistic", "Relaxed"]

    // +--- UIPickerViewDataSource Protocol Required Methods ---+
    // !!Need to manually connect Picker View to VC in storyboard
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return moodArray.count
    }
    
    // +--- UIPickerViewDelegate Protocal Required methods ---+
    // !!Need to manually connect Picker View to VC in storyboard
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return moodArray[row]
    }
    
    // +--- UIPickerViewDelegate Protocal optional methods ---+
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        var newBackgroundColor:UIColor
        
        switch row {
        case 0, 3, 4, 5:
            newBackgroundColor = UIColor.yellowColor()
        case 1:
            newBackgroundColor = UIColor.darkGrayColor()
        case 2:
            newBackgroundColor = UIColor.redColor()
        default:
            newBackgroundColor = UIColor(red: 205/255, green: 215/255, blue: 225/255, alpha: 1.0)
        }
        
        self.view.backgroundColor = newBackgroundColor
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

