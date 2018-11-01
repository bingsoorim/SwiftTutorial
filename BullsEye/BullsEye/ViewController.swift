//
//  ViewController.swift
//  BullsEye
//
//  Created by Soobin Rim on 2018-11-01.
//  Copyright © 2018 Soobin Rim. All rights reserved.
//

// viewWillAppear -> viewDidAppear -> viewWillDisappear -> viewDidDisappear

import UIKit
class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func showAlert() {
        let alert = UIAlertController(title: "Hello, World",
                                      message: "This is my first app!",
                                      preferredStyle: .alert)
        let action = UIAlertAction(title: "Awesome", style: .default,
                                   handler: nil)
        alert.addAction(action)
        // self.present -> the function that view controller has
        present(alert, animated: true, completion: nil)
    }
}
