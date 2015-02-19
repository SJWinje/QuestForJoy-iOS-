//
//  QuestForJoyTableViewController.swift
//  QuestForJoy
//
//  Created by Stephen Winje on 1/26/15.
//  Copyright (c) 2015 Stephen Winje. All rights reserved.
//

import UIKit

class QuestForJoyTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        NSNotificationCenter.defaultCenter().addObserver(self,
            selector: "preferredContentSizeChanged:",
            name: UIContentSizeCategoryDidChangeNotification,
            object: nil)

        // Uncomment the following line to preserve selection between presentations
        self.clearsSelectionOnViewWillAppear = false

        // Hide separators
        tableView.separatorColor = UIColor.lightGrayColor()
        
        // Remove separators from empty table cells
        tableView.tableFooterView = UIView(frame:CGRectZero)
        
        // Settings to enable rows to adjust their height based on the text in each row
        tableView.estimatedRowHeight = 66.0
        tableView.rowHeight = UITableViewAutomaticDimension
        
        // Add Settings button to Navigation Bar
        var settingsBarButton: UIBarButtonItem = UIBarButtonItem.init(title: "\u{2699}", style: UIBarButtonItemStyle.Plain, target: self, action: Selector("settingsButtonClicked"))
        self.navigationItem.rightBarButtonItem = settingsBarButton
        
        initSelectedLanguage()
    }
    
    func settingsButtonClicked() {
        // Get the text to share.  Include copyright data on all but last truth since it already contains it.
        self.performSegueWithIdentifier("ShowSettingsTable", sender:self)

    }
    
    func initSelectedLanguage() {
        // Get saved or default value of Setting: languageIndex
        var savedIndex:Int? = NSUserDefaults.standardUserDefaults().integerForKey("languageIndex")
        if let index = savedIndex {
            // If index has a value then it is safe to use savedIndex below the else
        } else {
            // Default to "English-ESV"
            savedIndex = find(languages, "English-ESV")
            // Save default Setting: languageIndex
            NSUserDefaults.standardUserDefaults().setInteger(savedIndex!, forKey: "languageIndex")
            NSUserDefaults.standardUserDefaults().synchronize()
        }
        
        // Set the language to be displayed
        currentQuest.switchLanguage(languages[savedIndex!])
    }
    
    override func viewWillAppear(animated: Bool) {
    
        // Reload the table so Accessibility Dynamic Type text size changes take effect immediately
        self.tableView.reloadSections(NSIndexSet(indexesInRange: NSMakeRange(0, self.tableView.numberOfSections())), withRowAnimation: .None)
    }

    func preferredContentSizeChanged(notification: NSNotification) {

        // Reload the table so Accessibility Dynamic Type text size changes take effect immediately
        tableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
        return currentQuest.numberOfTruths()
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("QuestCell", forIndexPath: indexPath)
            as UITableViewCell
        
        // Configure the cell...
        cell.textLabel?.text = currentQuest.truth(indexPath.row).heading
        
        // Dynamic Type was not applied to each cell of the table unless the following two lines are here
        cell.textLabel?.numberOfLines = 0
        cell.textLabel?.font = UIFont.preferredFontForTextStyle(UIFontTextStyleHeadline)

        cell.backgroundColor = UIColor.clearColor()
        return cell
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
        if (segue.identifier == "showDetail") {
            var svc = segue.destinationViewController as TextViewController;
            
            // Let the TextViewController know which row was selected
            let myIndexPath = self.tableView.indexPathForSelectedRow()
            svc.selectedTruth = myIndexPath?.row
        }
    }

}
