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
        UserDefaults.standard.synchronize()
        //  normal push window
        let passwordScreen = self.storyboard?.instantiateViewController(withIdentifier: "secureVC") as! SecureVC
        self.navigationController?.pushViewController(passwordScreen, animated: true)
        
        /*
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let SecureVC = storyBoard.instantiateViewController(withIdentifier: "secureVC") as! SecureVC
        self.present(SecureVC, animated: true, completion: nil)
         */
    }
}

