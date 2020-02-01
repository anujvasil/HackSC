//
//  ViewController.swift
//  Straw
//
//  Created by Anuj Vasil on 2/1/20.
//  Copyright © 2020 Anuj Vasil. All rights reserved.
//

import UIKit
import Firebase
import SwiftKeychainWrapper

class ViewController: UIViewController {
    
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {

        
    }

    @IBAction func signInButton(_ sender: Any) {
        
        if let email = emailField.text, let password = passwordField.text{
            
            Auth.auth().signIn(withEmail: email, password: password) { [weak self] user, error in
              guard let strongSelf = self else { return }
                
                if error != nil{
                    //creaste account
                }
                else{
                    
                    self?.performSegue(withIdentifier: "toFeed", sender: nil)
                }
            }
        }
        
    }
    
}

