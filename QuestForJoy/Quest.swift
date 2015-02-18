//
//  Quest.swift
//  QuestForJoy
//
//  Created by Stephen Winje on 1/23/15.
//  Copyright (c) 2015 Stephen Winje. All rights reserved.
//

import Foundation

class Quest: NSObject {
    var language: String
    var truths: [Truth]
    var copyright: String
    
    init(language: String) {
        self.language = language
        self.truths = truthData[language]!
        self.copyright = copyrightData[language]!
    }
    
    func switchLanguage(language: String) {
        self.language = language
        self.truths = truthData[language]!
        self.copyright = copyrightData[language]!
    }
    
    func truth(number: Int) -> Truth {
        return self.truths[number]
    }
    
    func numberOfTruths() -> Int {
        return truths.count
    }
    
    func heading(number: Int) -> String {
        return truths[number].heading
    }
    
}

