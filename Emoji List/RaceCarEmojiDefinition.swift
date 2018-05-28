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
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var birthLabel: UILabel!
    var emoji = Emoji()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //take the emoji label and assign the class' emoji
        EmojiLabel.text = emoji.theEmoji
        EmojiDefLabel.text = emoji.def
        birthLabel.text = "Release Date: \(emoji.releaseDate)"
        categoryLabel.text = "Category: \(emoji.category)"
        // Notice: only need four lines of codes, this conmes with the flexibility of adding a populated list!
        
        //The attribues of this View Controller's label is saved and the clicked emoji in the array is reset with the attributes by passing the array content into this VC's emoji variable and setting it to the RCEmojiLabel's text.
    }

}
