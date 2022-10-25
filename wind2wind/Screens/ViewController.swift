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
        
        /*
        if let wellcome = UserDefaults.standard.value(forKey: "codeIn") as? String {
            check.text = wellcome
        } else {
            let codeIn = textField.text
            UserDefaults.standard.set(codeIn, forKey: "codeIn")
        }*/
    }
    
    @IBAction func pushClicked(_ sender: Any) {
        let codeIn = textField.text
        UserDefaults.standard.set(codeIn, forKey: "codeIn")
        let passwordScreen = SecureVC()
        navigationController?.pushViewController(passwordScreen, animated: true)
    }
}

