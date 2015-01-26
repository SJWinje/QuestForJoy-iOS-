//
//  QuestForJoyDetailViewController.swift
//  QuestForJoy
//
//  Created by Stephen Winje on 1/26/15.
//  Copyright (c) 2015 Stephen Winje. All rights reserved.
//

import UIKit

class QuestForJoyDetailViewController: UIViewController {

    @IBOutlet var webView: UIWebView!
    var row:Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        // In order to load Quest For Joy directly from desiringgod.org
        //        let url = NSURL(string: "http://www.desiringgod.org/articles/quest-for-joy")
        //        let request = NSURLRequest(URL: (url!))
        
        // Get name of the html file to display based on the selected row
        let truth = "qfj-truth\(row!)"
        let localfilePath = NSBundle.mainBundle().URLForResource(truth, withExtension: "html");
        let request = NSURLRequest(URL: localfilePath!);
        webView.loadRequest(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
