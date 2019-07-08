//
//  SignupViewController.swift
//  LostAndFoundApp
//
//  Created by Nayna on 7/5/19.
//  Copyright © 2019 Nayna. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController, UINavigationBarDelegate,UINavigationControllerDelegate,UITextFieldDelegate,UIActionSheetDelegate{

    @IBOutlet weak var txt_firstName: UITextField!
    @IBOutlet weak var txt_lastName: UITextField!
    
    @IBOutlet weak var txt_dob: UITextField!
    
    @IBOutlet weak var txt_emailIDsignup: UITextField!
    
    @IBOutlet weak var txt_passwordSignup: UITextField!
    
    
    @IBOutlet weak var txt_contactNo: UITextField!
    
    @IBOutlet weak var txt_address: UITextField!
    
    @IBOutlet weak var txt_city: UITextField!
   var datePicker = UIDatePicker()
    var rdate  = NSDate()
    var rtime = NSTimeZone()
    
    var Response2: AnyObject!
    
    var Response1: AnyObject!
    
  
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        if(textField == txt_dob)
        {
            self.date_picker()
            return true
        }
     
        return false
    }
    
    func date_picker()
    {
        let toolbar1:UIToolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 66))
        let done:UIBarButtonItem = UIBarButtonItem(title: "Done", style: UIBarButtonItem.Style.plain, target:self, action: Selector(("cancelBtnClicked:")))
        done.tag  = 201
        let cancel:UIBarButtonItem = UIBarButtonItem(title: "Cancel", style: UIBarButtonItem.Style.plain, target: self, action: Selector(("cancelBtnClicked:")))
        cancel.tag = 202
        let space:UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        toolbar1.items = [cancel,space,done]
        toolbar1.barTintColor = UIColor(red: 174/255.0, green: 134/255.0, blue: 9/255.0, alpha: 1)
        toolbar1.tintColor = UIColor.black
        txt_dob.inputAccessoryView = toolbar1
        
        cancel.tintColor = UIColor.black
        done.tintColor = UIColor.black
        //        txtCaseassignstarttime.inputAccessoryView = toolbar1
        //        txtCasereachabletime.inputAccessoryView = toolbar1
       
        datePicker = UIDatePicker(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 44))
        datePicker.date = NSDate() as Date
        datePicker.maximumDate = NSDate() as Date
        datePicker.datePickerMode = UIDatePicker.Mode.date
        datePicker.timeZone = NSTimeZone.local
        datePicker.locale = NSLocale.current
        datePicker.calendar = NSCalendar.current
        datePicker.backgroundColor = UIColor(red: 255/255.0, green: 193/255.0, blue: 37/255.0, alpha: 1)
        txt_dob.inputView = datePicker
        //        txtCaseassignstarttime.inputView = datePicker
        //        txtCasereachabletime.inputView = datePicker
    }
 /*   func cancelBtnClicked(sender:UIButton!)
    {
        var btnTag = sender.tag
        if btnTag == 201
        {
            if(txt_dob.isFirstResponder())
            {
                txt_dob.resignFirstResponder()
                rdate = datePicker.date as NSDate;
                var df:DateFormatter = DateFormatter()
                df.dateFormat = "yyyy-MM-dd"
                txt_dob.text = df.string(from: rdate as Date)
                
            }
            txt_dob.resignFirstResponder()
            
            
        }
        else{
            self.view.endEditing(true)
        }
    }
*/
    
    
    @IBAction func btn_save(_ sender: UIBarButtonItem)
    {
        let myStoryBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let nextVC = myStoryBoard.instantiateViewController(withIdentifier: "loginVC") as! LoginViewController
        self.present(nextVC, animated: true, completion: nil)
    }
    
    @IBAction func txt_dobClick(_ sender: UITextField)
    {
     self.date_picker()
    }
    
    @IBAction func backbtn(_ sender: Any)
    {
        let myStoryBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let nextVC = myStoryBoard.instantiateViewController(withIdentifier: "loginVC") as! LoginViewController
        self.present(nextVC, animated: true, completion: nil)
    }
  
    
    @IBAction func btn_back(_ sender: UIBarButtonItem)
    { let secVC = storyboard!.instantiateViewController(withIdentifier: "loginVC") as! LoginViewController
        
        self.navigationController?.pushViewController(secVC, animated: true)
      
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

  
}
