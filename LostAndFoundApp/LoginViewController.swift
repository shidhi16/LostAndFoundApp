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
    
    
    private func getRememberMeValues()
    {
        let userDefault = UserDefaults.standard
        
        if let email = userDefault.string(forKey: "userEmail")
        {
            txt_emailId.text = email
            
            if let pwd = userDefault.string(forKey: "userPassword")
            {
                txtPassword.text = pwd
            }
        }
    }
    @IBAction func btnLogin(_ sender: UIButton)
    {
        if self.txt_emailId.text == "admin@gmail.com" && self.txtPassword.text == "s3cr3t"
        {
            let userDefault = UserDefaults.standard
            if switchRememberMe.isOn
            {
                
                userDefault.setValue(txt_emailId.text, forKey: "userEmail")
                userDefault.set(txtPassword.text, forKey: "userPassword")
                let myStoryBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                let nextVC = myStoryBoard.instantiateViewController(withIdentifier: "MenuVC") as! MenuViewController
                self.present(nextVC, animated: true, completion: nil)
            }
            else
            {
                userDefault.removeObject(forKey: "userEmail")
                userDefault.removeObject(forKey: "userPassword")
            }
        }
        else
        {
            let alert = UIAlertController(title: "Error", message: "Try again, User Email / Password Invalid", preferredStyle: .alert)
            
            let okButton = UIAlertAction(title: "Ok", style: .default, handler: nil)
            
            alert.addAction(okButton)
            
            self.present(alert, animated: true)
        }
    }
    /*
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
        
        
    
    
    */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getRememberMeValues()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background1")!)
        
    }


}

