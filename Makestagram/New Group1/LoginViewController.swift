//
//  LoginViewController.swift
//  Makestagram
//
//  Created by Elaina Teramoto on 7/10/18.
//  Copyright © 2018 Elaina Teramoto. All rights reserved.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        print("login button was tapped!!")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
