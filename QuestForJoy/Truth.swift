//
//  Truth.swift
//  QuestForJoy
//
//  Created by Stephen Winje on 2/18/15.
//  Copyright (c) 2015 Stephen Winje. All rights reserved.
//

import Foundation

class Truth: NSObject {
    var heading: String
    var scripture: String
    var comments: String
    
    init(heading: String, scripture: String, comments: String) {
        self.heading = heading
        self.scripture = scripture
        self.comments = comments
        super.init()
    }
}