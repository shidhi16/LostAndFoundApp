//
//  demoViewController.swift
//  LostAndFoundApp
//
//  Created by Nayna on 7/13/19.
//  Copyright © 2019 Nayna. All rights reserved.
//

import UIKit

class demoViewController: UIViewController {

    
    @IBOutlet weak var view1: UIView!
    
    @IBOutlet weak var view2: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
view1.isHidden = true
        view2.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btn_view1(_ sender: UIButton) {
        view2.isHidden = true
        if view1.tag == 0
        {
            view1.tag = 1
            view1.isHidden = true
        }else if view1.tag == 1
        {
            view1.tag = 0
            view1.isHidden = false
        }
        
    }
    
    @IBAction func btn_view2(_ sender: UIButton) {
        view1.isHidden = true
        if view2.tag == 0
        {
            view2.tag = 1
            view2.isHidden = true
        }else if view2.tag == 1
        {
            view2.tag = 0
            view2.isHidden = false
        }
        
    }
    
}
