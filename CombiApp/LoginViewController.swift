//
//  LoginViewController.swift
//  CombiApp
//
//  Created by Marcell Fulop on 4/29/25.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButtonPress(_ sender: Any) {
        if usernameTextField.text == "admin" && passwordTextField.text == "admin" {
            usernameTextField.text = ""
            passwordTextField.text = ""
            performSegue(withIdentifier: "loginSegue", sender: nil)
        }
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
