//
//  SignupViewController.swift
//  LostAndFoundApp
//
//  Created by Nayna on 7/5/19.
//  Copyright © 2019 Nayna. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController {

    @IBOutlet weak var txt_firstName: UITextField!
    @IBOutlet weak var txt_lastName: UITextField!
    
    @IBOutlet weak var txt_dob: UITextField!
    
    @IBOutlet weak var txt_emailIDsignup: UITextField!
    
    @IBOutlet weak var txt_passwordSignup: UITextField!
    
    
    @IBOutlet weak var txt_contactNo: UITextField!
    
    @IBOutlet weak var txt_address: UITextField!
    
    @IBOutlet weak var txt_city: UITextField!
  
    
    
    @IBAction func btn_save(_ sender: UIBarButtonItem)
    {
        let myStoryBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let nextVC = myStoryBoard.instantiateViewController(withIdentifier: "loginVC") as! LoginViewController
        self.present(nextVC, animated: true, completion: nil)
    }
    
    @IBAction func txt_dobClick(_ sender: UITextField)
    {
    
    }
    @IBAction func btnBack(_ sender: Any)
    {
        
    }
    
    @IBAction func backbtn(_ sender: Any)
    {
        let myStoryBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let nextVC = myStoryBoard.instantiateViewController(withIdentifier: "loginVC") as! LoginViewController
        self.present(nextVC, animated: true, completion: nil)
    }
    @IBAction func btn_Back(_ sender: Any) {
       
    
    }
    
    @IBAction func btn_back(_ sender: UIBarButtonItem)
    { let secVC = storyboard!.instantiateViewController(withIdentifier: "loginVC") as! LoginViewController
        
        self.navigationController?.pushViewController(secVC, animated: true)
      
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
