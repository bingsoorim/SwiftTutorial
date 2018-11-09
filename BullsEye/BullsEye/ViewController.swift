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
    @IBOutlet weak var slider: UISlider!
    var currentValue: Int = 50
    var targetValue: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        targetValue = 1 + Int(arc4random_uniform(100))
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func showAlert() {
        let message = "The value of the slider is: \(currentValue)" +
        "\nThe target value is: \(targetValue)"
        
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
