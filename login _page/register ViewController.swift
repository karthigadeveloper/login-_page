//
//  register ViewController.swift
//  login _page
//
//  Created by Karthiga on 2/8/24.
//

import UIKit

class register_ViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    

    @IBAction func savebtn(_ sender: Any) {
        UserDefaults.standard.set(username.text, forKey: "name")
        UserDefaults.standard.set(password.text, forKey: "Password")
        let a = storyboard?.instantiateViewController(withIdentifier: "view") as! ViewController //after save go to viewcontroller
        //self.present(nextViewController, animated:true, completion:nil)
        dismiss(animated: true)
    }
    
}
