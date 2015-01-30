//
//  QuestForJoyTableViewController.swift
//  QuestForJoy
//
//  Created by Stephen Winje on 1/26/15.
//  Copyright (c) 2015 Stephen Winje. All rights reserved.
//

import UIKit

class QuestForJoyTableViewController: UITableViewController {

    let truths = [
        "Did you know that God commands us to be glad?",
        "1) God created us for his glory",
        "2) Every human should live for God's glory",
        "3) All of us have failed to glorify God as we should",
        "4) All of us are subject to God's just condemnation",
        "5) God sent his only son Jesus to provide eternal life and joy",
        "6) The benefits purchased by the death of Christ belong to those who repent and trust him",
        "What should you do?"
    ]
            
    override func viewDidLoad() {
        super.viewDidLoad()
        NSNotificationCenter.defaultCenter().addObserver(self,
            selector: "preferredContentSizeChanged:",
            name: UIContentSizeCategoryDidChangeNotification,
            object: nil)

        // Uncomment the following line to preserve selection between presentations
        self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()

        // Hide separators
        tableView.separatorColor = UIColor.whiteColor()
        
        // Remove separators from empty table cells
        tableView.tableFooterView = UIView(frame:CGRectZero)
        
        // Settings to enable rows to adjust their height based on the text in each row
        tableView.estimatedRowHeight = 66.0
        tableView.rowHeight = UITableViewAutomaticDimension
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
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return truths.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("QuestCell", forIndexPath: indexPath)
            as UITableViewCell
        
        // Configure the cell...
        
        let truth = truths[indexPath.row]
        cell.textLabel?.text = truth
        
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
            svc.row = myIndexPath?.row
        }
    }

}
