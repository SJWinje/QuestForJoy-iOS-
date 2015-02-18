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
    
    // Outlet to the text view on the storyboard
    @IBOutlet var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add Share button to Navigation Bar
        let shareButton: UIBarButtonItem = UIBarButtonItem.init(barButtonSystemItem:.Action, target: self, action: Selector("shareButtonClicked"))        
        self.navigationItem.rightBarButtonItem = shareButton
        
        // Add observer to detect when Accessibility Dynamic Type size has changed
        NSNotificationCenter.defaultCenter().addObserver(self,
            selector: "preferredContentSizeChanged:",
            name: UIContentSizeCategoryDidChangeNotification,
            object: nil)

        // Get the selected text to display
        textView.attributedText = getText()

        // Cause top of text to be visible
        // This does not do exactly what I want, but it is close.
        // I'd really like to simulate the user tapping the status bar so the top of the text would be visible in all cases
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
        let hString = NSAttributedString(string: currentQuest.truth(selectedTruth).heading, attributes:hFont)
        let sString = NSAttributedString(string: currentQuest.truth(selectedTruth).scripture, attributes:iFont)
        let cString = NSAttributedString(string: currentQuest.truth(selectedTruth).comments, attributes:bFont)

        // Add formatted strings to paragraph
        p.appendAttributedString(hString)
        p.appendAttributedString(sString)
        p.appendAttributedString(cString)
        
        // Return text to be displayed
        return p

    }

    func shareButtonClicked() {
        let myApp = "Quest for Joy"
        let qfjURL = "http://appstore.com/QuestForJoy"
        var attrString = NSMutableAttributedString(string: myApp)
        // the entire string
        var range:NSRange = NSMakeRange(0, attrString.length)
        
        // Get the text to share
        var textToShare = NSMutableAttributedString()

        // First, get reference to the QuestForJoy app
        textToShare.appendAttributedString(NSAttributedString(string: "From the ", attributes:bFont))
        attrString.beginEditing()
        attrString.addAttribute(NSFontAttributeName, value:UIFont.preferredFontForTextStyle(UIFontTextStyleBody), range:range)
        attrString.addAttribute(NSLinkAttributeName, value:qfjURL, range:range)
        attrString.addAttribute(NSForegroundColorAttributeName, value:UIColor.blueColor(), range:range)
        attrString.endEditing()
        textToShare.appendAttributedString(NSAttributedString(attributedString: attrString))
        textToShare.appendAttributedString(NSAttributedString(string: " app (\(qfjURL)).  Copyright ©2015 Extendant Software Inc.\n\n", attributes:bFont))
        
        // Next, get the text of the Truth selected
        textToShare.appendAttributedString(getText())
        
        // Finally, include the copyright data on all but last Truth since it already contains it
        if (selectedTruth != 7) {
            textToShare.appendAttributedString(NSAttributedString(string: currentQuest.copyright, attributes:bFont))
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
