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
    
    var currentValue: Int = 50
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func showAlert() {
        let message = "The value of the slider is: \(currentValue)"
        
        let alert = UIAlertController(title: "Hello, World",
                                      message: message,
                                      preferredStyle: .alert)
        let action = UIAlertAction(title: "OK",
                                   style: .default,
                                   handler: nil)
        alert.addAction(action)
        
        // self.present -> the function that view controller has
        present(alert, animated: true, completion: nil)
    }
    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = lroundf(slider.value)
    }
}
