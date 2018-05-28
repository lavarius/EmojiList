//
//  RaceCarEmojiDefinition.swift
//  Emoji List
//
//  Created by Mark Bartolo on 5/28/18.
//  Copyright © 2018 mlavarius. All rights reserved.
//

import UIKit

class RaceCarEmojiDefinition: UIViewController {
    
    @IBOutlet weak var EmojiDefLabel: UILabel!
    @IBOutlet weak var EmojiLabel: UILabel!
    //@IBOutlet weak var RCEmojiLabel: UILabel!
    
    var emoji = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //The attribues of this View Controller's label is saved and the clicked emoji in the array is reset with the attributes by passing the array content into this VC's emoji variable and setting it to the RCEmojiLabel's text. 
        EmojiLabel.text = emoji
        
        //["🙂","☹️", "💩", "🏎", "⛪️", "💒", "🕌", "🕍"]
        //since we don't have the whole array passed in, we don't know what's there and can't use a for loop
        if emoji == "🙂" {
            EmojiDefLabel.text = "This is the smiley emoji"
        } else if emoji == "☹️" {
            EmojiDefLabel.text = "This is the sad face emoji"
        } else if emoji == "💩" {
            EmojiDefLabel.text = "This is the poop emoji"
        } else if emoji == "⛪️" {
            EmojiDefLabel.text = "This is the Church emoji"
        } else if emoji == "💒" {
            EmojiDefLabel.text = "This is the Love Church emoji"
        } else if emoji == "🕌" {
            EmojiDefLabel.text = "This is the Pagoda emoji"
        } else if emoji == "🕍" {
            EmojiDefLabel.text = "This is David's Church emoji"
        } else {
            EmojiDefLabel.text = EmojiDefLabel.text
        }
    }

}
