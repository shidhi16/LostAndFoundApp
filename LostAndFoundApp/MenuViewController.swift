//
//  MenuViewController.swift
//  LostAndFoundApp
//
//  Created by Nayna on 7/5/19.
//  Copyright © 2019 Nayna. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var txtfld1: UITextField!
  
    @IBOutlet weak var menuview: UIView!
    
    
    
     var i:Int=0
    @IBAction func btn_menu(_ sender: UIButton)
    {
        if(i==0)
        {
            UIView.animate(withDuration: 0.4, animations:{
                self.menuview.frame = CGRect(x: self.menuview.frame.origin.x + self.menuview.bounds.width, y: self.menuview.frame.origin.y, width:self.menuview.bounds.width, height: self.menuview.bounds.height)
                
                //                UIView.animateWithDuration(0.4, animations:{
                //                    self.slideview.frame = CGRect(x: self.slideview.frame.origin.x - self.slideview.bounds.width, y: self.slideview.frame.origin.y, width:self.slideview.bounds.width, height: self.slideview.bounds.height)
                //            print(self.slideview.frame.origin.x)
                
            })
            i=1
        }
        else{
            UIView.animate(withDuration: 0.4, animations:{
                self.menuview.frame = CGRect(x: self.menuview.frame.origin.x - self.menuview.bounds.width, y: self.menuview.frame.origin.y, width:self.menuview.bounds.width, height: self.menuview.bounds.height)
                
                //
                //            UIView.animateWithDuration(0.4, animations:{
                //                self.slideview.frame = CGRect(x: self.slideview.frame.origin.x + self.slideview.bounds.width, y: self.slideview.frame.origin.y, width:self.slideview.bounds.width, height: self.slideview.bounds.height)
                
                //
            })
            i=0
            print(self.menuview .frame.origin.x)
        }

    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.isHidden = true
        self.menuview.frame = CGRect(x: 0 - self.menuview.bounds.width, y: self.menuview.frame.origin.y, width:self.menuview.bounds.width, height: self.menuview.bounds.height)
        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func btn_addLostItem(_ sender: UIButton)
    {
        let myStoryBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let nextVC = myStoryBoard.instantiateViewController(withIdentifier: "addLostItemVC") as! addLostItemViewController
        self.present(nextVC, animated: true, completion: nil)
    }
    
}
