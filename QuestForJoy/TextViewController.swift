//
//  TextViewController.swift
//  QuestForJoy
//
//  Created by Stephen Winje on 1/27/15.
//  Copyright (c) 2015 Stephen Winje. All rights reserved.
//

import UIKit

class TextViewController: UIViewController {

    // The fonts that will be used to format the text
    // Need to use fonts that respond to Accessibility Dynamic Type text size changes
    let hFont = [NSFontAttributeName:UIFont.preferredFontForTextStyle(UIFontTextStyleHeadline)]
    let bFont = [NSFontAttributeName:UIFont.preferredFontForTextStyle(UIFontTextStyleBody)]
    let iFont = [NSFontAttributeName:UIFont.italicSystemFontOfSize(UIFont.preferredFontForTextStyle(UIFontTextStyleBody).pointSize)]
    
    // Variable to hold the selectedTruth selected from the QuestForJoyTableViewController
    var selectedTruth:Int!
    var lang: String = ""
    
    // Outlet to the text view on the storyboard
    @IBOutlet var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add Share button to Navigation Bar
        let shareButton: UIBarButtonItem = UIBarButtonItem.init(barButtonSystemItem:.Action, target: self, action: Selector("shareButtonClicked"))        
        self.navigationItem.rightBarButtonItem = shareButton
        
        // self.automaticallyAdjustsScrollViewInsets = false;
        
        // Add observer to detect when Accessibility Dynamic Type size has changed
        NSNotificationCenter.defaultCenter().addObserver(self,
            selector: "preferredContentSizeChanged:",
            name: UIContentSizeCategoryDidChangeNotification,
            object: nil)

        // Get saved Setting: languageIndex
        let savedIndex:Int? = NSUserDefaults.standardUserDefaults().integerForKey("languageIndex")
        // Determine what language to display
        lang = languages[savedIndex!]
        
        // Get the selected text to display
        textView.attributedText = getText()

        // 
        // Cause top of text to be visible
        // This does not do exactly what I want, but it is close.
        // I'd really like to simulate the user tapping the status bar so the top of the text would be visible in all cases
        //
        textView.setContentOffset(CGPointMake(0,10000), animated: false)
        // This may be what does the trick
        let loc:NSRange = NSRange(location: 0, length: 100)
        textView.scrollRangeToVisible(loc)
        
    }

    func preferredContentSizeChanged(notification: NSNotification) {
        // Get the selected text to display once again so it can be resized based on the selected Accessibility Dynamic Type size
        textView.attributedText = getText()
    }
    
    func getText() -> NSMutableAttributedString {

        // Create a string that will be our paragraph of text to be displayed
        var p = NSMutableAttributedString()
        
        // Create formatted strings for the selected language and truth
        let hString = NSAttributedString(string: newQuestData[lang]![selectedTruth!].heading, attributes:hFont)
        let sString = NSAttributedString(string: newQuestData[lang]![selectedTruth!].scripture, attributes:iFont)
        let cString = NSAttributedString(string: newQuestData[lang]![selectedTruth!].comments, attributes:bFont)

        // Add formatted strings to paragraph
        p.appendAttributedString(hString)
        p.appendAttributedString(sString)
        p.appendAttributedString(cString)
        
        // Return text to be displayed
        return p

    }

    func shareButtonClicked() {
        // Get the text to share.  Include copyright data on all but last truth since it already contains it.
        var textToShare = getText()
        if (selectedTruth != 7) {
            textToShare.appendAttributedString(NSAttributedString(string: copyrightData[lang]!, attributes:bFont))
        }
        let firstActivityItem = textToShare
        
        let secondActivityItem : NSURL = NSURL(fileURLWithPath: "http://www.desiringgod.org/")!
        
        let activityViewController : UIActivityViewController = UIActivityViewController(
            activityItems: [firstActivityItem, secondActivityItem], applicationActivities: nil)
        
        // This is needed to enable the share button to function properly on iOS 8 iPads
        activityViewController.popoverPresentationController?.sourceView = self.textView
        
        activityViewController.excludedActivityTypes = [
            UIActivityTypeAddToReadingList,
            UIActivityTypeAssignToContact,
            UIActivityTypePostToFlickr,
            UIActivityTypePostToTencentWeibo,
            UIActivityTypePostToVimeo,
            UIActivityTypePostToWeibo,
            UIActivityTypePrint,
            UIActivityTypeSaveToCameraRoll
        ]
        /* All activity types, in case others need to be excluded
        UIActivityTypeAddToReadingList,
        UIActivityTypeAirDrop,
        UIActivityTypeAssignToContact,
        UIActivityTypeCopyToPasteboard,
        UIActivityTypeMail,
        UIActivityTypeMessage,
        UIActivityTypePostToFacebook,
        UIActivityTypePostToFlickr,
        UIActivityTypePostToTencentWeibo,
        UIActivityTypePostToTwitter,
        UIActivityTypePostToVimeo,
        UIActivityTypePostToWeibo,
        UIActivityTypePrint,
        UIActivityTypeSaveToCameraRoll,
        */
        self.presentViewController(activityViewController, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
