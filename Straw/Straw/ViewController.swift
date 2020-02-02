//
//  ViewController.swift
//  Straw
//
//  Created by Anuj Vasil on 2/1/20.
//  Copyright © 2020 Anuj Vasil. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
//sign up
    @IBOutlet weak var nameField: UITextField!
    
    var ref = Database.database().reference()
    
    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!

    @IBAction func continueButton(_ sender: Any) {
        
       if let email = emailField.text, let password = passwordField.text{
        Auth.auth().createUser(withEmail: email, password: password){
        (user, error)
        in
           
                if error != nil {

                }
                else{
                    self.performSegue(withIdentifier: "toFeed2", sender: nil)
                    self.ref.child("posts").childByAutoId().setValue("test")

                }
            }
        }
    }
    
    
//sign in
    @IBOutlet weak var emailA: UITextField!
    @IBOutlet weak var passwordA: UITextField!
    
    
    @IBAction func continueAlready(_ sender: UIButton) {
        
        if let email = emailA.text, let password = passwordA.text{
            Auth.auth().signIn(withEmail: email, password: password){
                (user, error)
                in
                
                if error != nil {
                    //create account
                }
                else{
                    self.performSegue(withIdentifier: "toFeed", sender: nil)
                    self.ref.child("posts").childByAutoId().setValue("test")
                }
            }
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        //ref.child("users/").setValue("Mike")
        
    }


}

