//
//  Item.swift
//  LostAndFoundApp
//
//  Created by Nayna on 7/15/19.
//  Copyright © 2019 Nayna. All rights reserved.
//

import Foundation



class Item
{
    var itemId: Int
    var itemCategory: String
    var itemName: String
    var description: String
    
    init()
    {
        self.itemId = Int()
        self.itemCategory = String()
        self.itemName = String()
        self.description = String()
        
       
        
    }
    
    init(itemID:Int, itemCategory : String, itemName :String, description : String)
    {
        self.itemId = itemID
        self.itemCategory = itemCategory
        self.itemName = itemName
        self.description = description
    }
   
}
