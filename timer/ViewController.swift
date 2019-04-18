//
//  ViewController.swift
//  timer
//
//  Created by Cameron Yang  on 6/24/17.
//  Copyright © 2017 Cameron Yang . All rights reserved.
//

import UIKit

class ViewController: UIViewController, FBSDKLoginButtonDelegate {

       
    override func viewDidLoad() {
        super.viewDidLoad()
        let loginButton = FBSDKLoginButton()
        view.addSubview(loginButton)
        loginButton.center = self.view.center
        loginButton.delegate = self
        if(FBSDKAccessToken.current() != nil){
            performSegue(withIdentifier: "segueToWork", sender: nil)
        }
    }
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        print("Did log out of facebook")
        
    }
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        if (error != nil){
            print(error)
            return;
        }
        
        print("Successfully logged out of facebook")
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}

