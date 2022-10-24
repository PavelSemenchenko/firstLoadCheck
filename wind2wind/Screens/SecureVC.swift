//
//  SecureVC.swift
//  wind2wind
//
//  Created by Pavel Semenchenko on 24.10.2022.
//

import Foundation
import UIKit

class SecureVC: UIViewController {
    
    @IBOutlet weak var secureText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        secureText.text = UserDefaults.standard.value(forKey: "codeIn") as! String
        
    }
    
    
}
