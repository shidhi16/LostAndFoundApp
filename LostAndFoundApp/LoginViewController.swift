//
//  ViewController.swift
//  LostAndFoundApp
//
//  Created by Nayna on 7/5/19.
//  Copyright © 2019 Nayna. All rights reserved.
//

import UIKit
class LoginViewController: UIViewController {

    
    @IBOutlet weak var txt_emailId: UITextField!
    
 
    
    @IBOutlet weak var txtPassword: UITextField!
    
    
    @IBOutlet weak var switchRememberMe: UISwitch!
    
    @IBAction func btnSignup(_ sender: UIButton)
    {
        let myStoryBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let nextVC = myStoryBoard.instantiateViewController(withIdentifier: "signupVC") as! SignupViewController
        self.present(nextVC, animated: true, completion: nil)
    }
    @IBAction func btnLogin(_ sender: UIButton)
    {
        validateUser()
    }
        func validateUser()
        {
            if(txt_emailId.text == "admin@gmail.com" && txtPassword.text == "admin123")
            {
           
                let myStoryBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                let nextVC = myStoryBoard.instantiateViewController(withIdentifier: "MenuVC") as! MenuViewController
                self.present(nextVC, animated: true, completion: nil)
                
            }
            else
            {
                
                let alert  =
                    UIAlertController(title: "Error", message: "User Email / Password incorrect", preferredStyle: UIAlertController.Style.alert)
               
                let actionOk = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
                
            
                alert.addAction(actionOk)
                
              
                self.present(alert, animated: true, completion: nil)
            }
        }
        
        
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

