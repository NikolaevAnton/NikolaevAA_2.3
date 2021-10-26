//
//  WelcomeViewController.swift
//  NikolaevAA_2.3
//
//  Created by Anton Nikolaev on 26.10.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    var name: String = ""
    
    @IBOutlet var helloLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helloLabel.text = "Welome \(name)"
        
    }
    

    @IBAction func logOutButton() {
        dismiss(animated: true)
    }
    

}
