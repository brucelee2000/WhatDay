# WhatDay
Date Picker usage
-----------------

        // Grab date from DatePicker
        var chosenDate = datePicker.date
        
        // Create an NSDateFormatter
        var formatter = NSDateFormatter()
        formatter.dateFormat = "EEEE"
        
        // Grab the day and create a message
        let day = formatter.stringFromDate(chosenDate)
        let result = "That was a \(day)"

Picker View Setup - delegate and datasource
-------------------------------------------
**Add two protocals *UIPickerViewDataSource* and *UIPickerViewDelegate* including storyboard**

    class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {...}
    
**Complete protocal required methods**

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
    
Row selection in Picker View
----------------------------

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
