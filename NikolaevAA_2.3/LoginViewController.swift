//
//  ViewController.swift
//  NikolaevAA_2.3
//
//  Created by Anton Nikolaev on 26.10.2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var nameTextField: UITextField!
    
    
    @IBOutlet var passwordTextFild: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.text = ""
        passwordTextFild.text = ""
    
    }
    
    @IBAction func logInButton() {
        let name = nameTextField.text!
        let password = passwordTextFild.text!
        if name != "Name" || password != "Password" {
            getAlert(title: "Invalid Login or Password",
                     text: "Please enter correct login and password")
        }
    }
    

    @IBAction func forgotName() {
        getAlert(title: "Oooops!", text: "Your name is Name")
    }
    
    
    @IBAction func forgotPassword() {
        getAlert(title: "Oooops!", text: "Your password is Password")
    }
    
    private func getAlert(title: String, text: String) {
        let alert = UIAlertController(title: title, message: text, preferredStyle: UIAlertController.Style.alert)

        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

        self.present(alert, animated: true, completion: nil)
    }
    
    
}

