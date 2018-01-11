//
//  ViewController.swift
//  Crush!
//
//  Created by Elli Scharlin on 1/9/18.
//  Copyright © 2018 Elli Scharlin. All rights reserved.
//

import UIKit
import SmileLock

class ViewController: UIViewController {
    
    let kPasswordDigit = 6
    
    let passwordContainerView = PasswordContainerView()


    
    override func viewDidLoad() {
        print("View did load")
        super.viewDidLoad()
        passwordContainerView.delegate = self
        self.passwordContainerView.create(withDigit: kPasswordDigit)
       
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
 
}

extension ViewController: PasswordInputCompleteProtocol {
    func passwordInputComplete(_ passwordContainerView: PasswordContainerView, input: String) {
        
    }
    
    func touchAuthenticationComplete(_ passwordContainerView: PasswordContainerView, success: Bool, error: Error?) {
        
    }
    
    func touchAuthenticationComplete(passwordContainerView: PasswordContainerView, success: Bool) {
        if success {
            //authentication success
        } else {
            passwordContainerView.clearInput()
        }
    }
}
