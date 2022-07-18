//
//  ViewController.swift
//  TryAddToApp
//
//  Created by toya on 2022/07/18.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var myLabel: UILabel!
    
    @IBAction func buttonTapped(sender: UIButton) {
        myLabel.text = "Hello World!"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

