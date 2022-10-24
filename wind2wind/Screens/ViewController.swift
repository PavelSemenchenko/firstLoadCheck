//
//  ViewController.swift
//  wind2wind
//
//  Created by Pavel Semenchenko on 24.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var check: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let codeIn = textField.text
        //UserDefaults.standard.set(codeIn, forKey: "codeIn")
        
        /*
        if let wellcome = UserDefaults.standard.value(forKey: "codeIn") as? String {
         check.text = wellcome
         } else {
         UserDefaults.standard.set("zeroIn", forKey: "codeIn")
         }*/
         
        UserDefaults.standard.set(check.text, forKey: "codeIn")
    }
    
    @IBAction func pushClicked(_ sender: Any) {
        
        //check.text = UserDefaults.standard.value(forKey: "codeIn") as! String
        let passwordScreen = SecureVC()
        navigationController?.pushViewController(passwordScreen, animated: true)
    }
    
}

