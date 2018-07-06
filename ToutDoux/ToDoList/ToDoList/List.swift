//
//  List.swift
//  ToDoList
//
//  Created by Loris Mazloum on 8/28/16.
//  Copyright © 2016 Loris Mazloum. All rights reserved.
//

import UIKit

class List {
    var name: String
    var items: [Item]
    var color: UIColor = UIColor.clear
    
    init(name providedName: String, items providedItem: [Item]) {
        name = providedName
        items = providedItem
        color = randomColor()
    }
    
    func randomColor() -> UIColor {
        let flatColors = [
            UIColor(red:26/255, green:188/255, blue: 156/255, alpha:1.0),
            UIColor(red:46/255, green:204/255, blue: 113/255, alpha:1.0),
            UIColor(red:52/255, green:152/255, blue: 219/255, alpha:1.0),
            UIColor(red:155/255, green:89/255, blue: 182/255, alpha:1.0),
            UIColor(red:22/255, green:160/255, blue: 133/255, alpha:1.0),
            UIColor(red:39/255, green:174/255, blue: 96/255, alpha:1.0),
            UIColor(red:41/255, green:128/255, blue: 185/255, alpha:1.0),
            UIColor(red:142/255, green:68/255, blue: 173/255, alpha:1.0),
            UIColor(red:241/255, green:196/255, blue: 15/255, alpha:1.0),
            UIColor(red:230/255, green:126/255, blue: 34/255, alpha:1.0),
            UIColor(red:231/255, green:76/255, blue: 60/255, alpha:1.0),
            UIColor(red:243/255, green:156/255, blue: 18/255, alpha:1.0),
            UIColor(red:211/255, green:84/255, blue: 0/255, alpha:1.0),
            UIColor(red:192/255, green:57/255, blue: 43/255, alpha:1.0)
        ]
        
        let randomIndex = Int(arc4random_uniform(UInt32(flatColors.count)))

        return flatColors[randomIndex]
    }
    
}


