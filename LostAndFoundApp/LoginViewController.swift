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
    
    var UsersDict = [UsersStruct]()
    
    // getting user defaults reference
    let userDefault = UserDefaults.standard
    
    
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
        if let email = txt_emailId.text{
            if !email.isEmpty{
                
                if email.isVAlidEmail(){
                    if let password = txtPassword.text{
                        if !password.isEmpty{
                            if password{
                                
                                if  checkEmailPassword(email: email, password: password) {
                                    setRememberMe()
                                    
                                    let storyboard = UIStoryboard(name: "Main", bundle: nil)
                                    let dashboardVC = storyboard.instantiateViewController(withIdentifier: "customerListVC") as! MenuViewController
                                    
                                    self.navigationController?.pushViewController(dashboardVC, animated: true)
                                    
                                    
                                }else{
                                    showAlerBox(msg: "You have enter wrong credentials")
                                }
                                
                            }else{
                                showAlerBox(msg: "Invalid password size")
                            }
                            
                        }else{
                            showAlerBox(msg: "Please enter password")
                        }
                    }
                }
                else{
                    showAlerBox(msg: "Please enter valid email")
                }
            }else{
                showAlerBox(msg: "Please enter useremail")
            }
        }
    }
        func showAlerBox(msg : String)  {
            let alertController = UIAlertController(title: "CustomerBillApp", message:
                msg, preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
            
            self.present(alertController, animated: true, completion: nil)
        }
        
        
        func readCustomersPlistFile(){
            
            let plist = Bundle.main.path(forResource: "UserInfo", ofType: "plist")
            
            if let dict = NSMutableDictionary(contentsOfFile: plist!){
                if let Customers = dict["Users"] as? [[String:Any]]
                {
                    for customer in Customers {
                        let id = customer["userID"] as! Int
                        let firstName = customer["userName"] as! String
                        
                        let email = customer["email"] as! String
                        let password = customer["password"] as! String
                        
                        self.UsersDict.append(UsersStruct(userID: id, userName: firstName, email: email, password: password))
                    }
                }
            }
            
        }
        
        
        
        func checkEmailPassword(email : String , password : String) -> Bool{
            
            for everyCustomer in UsersDict{
                if (everyCustomer.email == email && everyCustomer.password == password) {
                    return true
                }
            }
            return false
        }
        
        func setRememberMe()  {
            if switch_rememberMe.isOn {
                userDefault.set(self.txt_emailID.text, forKey: "email")
                userDefault.set(self.txt_password.text, forKey: "password")
            }else{
                userDefault.set("", forKey: "email")
                userDefault.set("", forKey: "password")
            }
        }
        
        func getRememberMe()
        {
            let userDefault = UserDefaults.standard
            
            if let email = userDefault.string(forKey: "email")
            {
                txt_emailId.text = email
                
                if let password = userDefault.string(forKey: "password")
                {
                    txtPassword.text = password
                    switchRememberMe.setOn(true, animated: false)
                }
            }
        }
        
    
    
 
    
    override func viewDidLoad()
    {
        
        switchRememberMe.isOn = false
        getRememberMe()
        readCustomersPlistFile()
        super.viewDidLoad()
      
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background1")!)
        
    }


}

