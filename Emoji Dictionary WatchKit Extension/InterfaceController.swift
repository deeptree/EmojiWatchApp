//
//  InterfaceController.swift
//  Emoji Dictionary WatchKit Extension
//
//  Created by deeptree on 2015/5/4.
//  Copyright (c) 2015年 deeptree. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var table: WKInterfaceTable!
    
    var emojis = ["😋","😇","😼","🐳","🙊","⛪️"]
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        self.table.setNumberOfRows(self.emojis.count, withRowType: "EmojiRow")
        
        for index in 0..<self.emojis.count {
            var theRow = self.table.rowControllerAtIndex(index) as! EmojiRow
            theRow.emojiRowLabel.setText(self.emojis[index])
            
        }
    }
    
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int) {
        self.pushControllerWithName("ZoomEmojiController", context: self.emojis[rowIndex])
    }

}
