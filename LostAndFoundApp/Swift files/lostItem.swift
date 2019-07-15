//
//  lostItem.swift
//  LostAndFoundApp
//
//  Created by Nayna on 7/15/19.
//  Copyright © 2019 Nayna. All rights reserved.
//

import Foundation

class lostItem : Item
{
    
    var reward: Float
    var lostDate : Date
    
     init(itemID: Int, itemCategory: String, itemName: String, description: String, reward : Float, lostDate : Date) {
        self.reward = reward
        self.lostDate = lostDate
        super.init(itemID: itemID, itemCategory: itemCategory, itemName: itemName, description: description)
    }
    
   
}
