//
//  LoginViewController.swift
//  Makestagram
//
//  Created by Elaina Teramoto on 7/10/18.
//  Copyright © 2018 Elaina Teramoto. All rights reserved.
//

import Foundation
import UIKit
import FirebaseAuth
import FirebaseUI

typealias FIRUser = FirebaseAuth.User
class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        
        guard let authUI = FUIAuth.defaultAuthUI()
            else {return}
        authUI.delegate = self
        let authViewController = authUI.authViewController()
        present(authViewController, animated: true)
        print("login button was tapped!!")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
extension LoginViewController: FUIAuthDelegate{
    func authUI(_ authUI: FUIAuth, didSignInWith user: FIRUser?, error: Error?){
        if let error = error{
            assertionFailure("Error signing in: \(error.localizedDescription)")
            return
        }
        print("handle user signup/login")
    }
}
