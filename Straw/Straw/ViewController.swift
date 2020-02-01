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

    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var usernameField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    @IBAction func continueButton(_ sender: Any) {
        
        if let email = emailField.text, let password = passwordField.text{
            Auth.auth().signIn(withEmail: email, password: password){
                (user, error)
                in
                
                if error != nil {
                    //create account
                }
                else{
                    self.performSegue(withIdentifier: "toFeed", sender: nil)
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

