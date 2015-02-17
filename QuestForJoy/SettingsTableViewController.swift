//
//  SettingsTableViewController.swift
//  QuestForJoy
//
//  Created by Stephen Winje on 2/16/15.
//  Copyright (c) 2015 Stephen Winje. All rights reserved.
//

import UIKit

class SettingsTableViewController: UITableViewController, UITextFieldDelegate {
    
    @IBOutlet var pView: UIPickerView!
    
    @IBOutlet var languageSelected: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        languageSelected.delegate = self
        
        // Get saved or default value of Setting: languageIndex
        var savedIndex:Int? = NSUserDefaults.standardUserDefaults().integerForKey("languageIndex")
        if let index = savedIndex {
            // If index has a value then it is safe to use savedIndex below the else
        } else {
            // Default to "English-NIV"
            savedIndex = find(languages, "English-NIV")
            // Save default Setting: languageIndex
            NSUserDefaults.standardUserDefaults().setInteger(savedIndex!, forKey: "languageIndex")
            NSUserDefaults.standardUserDefaults().synchronize()
        }
        
        // Select the language that was saved previously
        pView.selectRow(savedIndex!, inComponent: 0, animated: false)
        
        // Initialize the text to be displayed in the Language textField
        languageSelected.text = languages[savedIndex!]
        
        // Show the textField, Hide the pickerView
        languageSelected.hidden = false
        pView.hidden = true
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return languages.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return languages[row]
    }
    
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView!) -> UIView {
        
        var myString = view as UILabel!
        
        var myStringLength = 0
        
        if( view == nil) {
            myString = UILabel()
        }
        
        myString.textAlignment = NSTextAlignment.Center
        
        let rowText = languages[row]
        
        var attributedRowText = NSMutableAttributedString(string: rowText)
        var attributedRowTextLength = attributedRowText.length
        
        attributedRowText.addAttribute(NSFontAttributeName, value:UIFont.preferredFontForTextStyle(UIFontTextStyleBody), range: NSRange(location: 0 ,length:attributedRowTextLength))
        
        myString!.attributedText = attributedRowText
        
        return myString
    }
    
    func pickerView(pickerView: UIPickerView!, didSelectRow row: Int, inComponent component: Int)
    {
        // Save selected Setting: languageIndex
        NSUserDefaults.standardUserDefaults().setInteger(row, forKey: "languageIndex")
        NSUserDefaults.standardUserDefaults().synchronize()

        // TODO: change to the following
        if (tryUpdate) {
            Truths.switchLanguage(languages[row])
        }
        
        // Display the selected language
        //let lang = languages[row]
        //println("Selected row \(row): \(lang)")
        languageSelected.text = languages[row]
        
        // Show the textField, Hide the pickerView
        languageSelected.hidden = false
        pView.hidden = true
    }
    
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        // Hide the textField, Show the pickerView
        languageSelected.hidden = true
        pView.hidden = false
        
        return false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    }
    */
    
}
