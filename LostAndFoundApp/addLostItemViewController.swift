//
//  addLostItemViewController.swift
//  LostAndFoundApp
//
//  Created by Nayna on 7/7/19.
//  Copyright © 2019 Nayna. All rights reserved.
//

import UIKit

class addLostItemViewController: UIViewController
{

    
    @IBOutlet weak var txt_itemName: UITextField!
    @IBOutlet weak var txt_category: UITextField!
    
    @IBOutlet weak var txt_place: UITextField!
    
    @IBOutlet weak var txt_dateLostItem: UITextField!
    @IBOutlet weak var txt_reward: UITextField!
    @IBOutlet weak var txt_description: UITextField!
    
    @IBOutlet weak var img_item: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btn_saveLostItem(_ sender: UIButton)
    {
    
    
    }
    
    
}
