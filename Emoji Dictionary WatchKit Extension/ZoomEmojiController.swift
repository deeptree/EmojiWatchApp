//
//  ZoomEmojiController.swift
//  Emoji Dictionary
//
//  Created by deeptree on 2015/5/10.
//  Copyright (c) 2015年 deeptree. All rights reserved.
//

import WatchKit
import Foundation


class ZoomEmojiController: WKInterfaceController {

    @IBOutlet weak var zoomEmojiLabel: WKInterfaceLabel!
    @IBOutlet weak var definitionLabel: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
//        self.zoomEmojiLabel.setText(<#text: String?#>)
        var emoji = context as! String
        var font = UIFont.systemFontOfSize(80)
        var specialString = NSAttributedString(string: emoji, attributes: [NSFontAttributeName: font])
        self.zoomEmojiLabel.setAttributedText(specialString)
    
        var definition = "Hey you!"
        if emoji == "😋" {
            
            definition = "yami yami"
        }
        
        if emoji == "😇" {
            
            definition = "Angel"
        }
        
        if emoji == "😼" {
            
            definition = "Cat"
        }
        
        if emoji == "🐳" {
            
            definition = "Whale"
        }
        
        self.definitionLabel.setText(definition)
    }

}
