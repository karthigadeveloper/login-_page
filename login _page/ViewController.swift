//
//  ViewController.swift
//  login _page
//
//  Created by Karthiga on 2/7/24.

import UIKit

protocol LoginViewControllerDelegate: AnyObject {
    func didTapLoginButton(username: String?, password: String?)
    func didTapRegisterButton()
}

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!

    weak var delegate: LoginViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()


        // Configure button styles
        loginButton.layer.cornerRadius = 8
        registerButton.layer.cornerRadius = 8
    }

    @IBAction func loginButtonTapped(_ sender: UIButton) {

        if(usernameTextField.text == UserDefaults.standard.string(forKey: "name")) {
            
        if(passwordTextField.text == UserDefaults.standard.string(forKey: "Password")){

            let v = storyboard?.instantiateViewController(withIdentifier: "login") as! loginViewController
            self.present(v, animated:true, completion:nil)
            loginButton.backgroundColor = .green
        }
            else{
                print("password error")
            }
            
        
    }
        else{
            print("emaill error")
        }
        
    }
    

    @IBAction func registerButtonTapped(_ sender: UIButton) {
        let a = storyboard?.instantiateViewController(withIdentifier: "register")as! register_ViewController
        self.present(a, animated: true, completion: nil)
        registerButton.backgroundColor = .systemGreen
    }

    // Add a helper function to display alerts
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true)
    }


}
