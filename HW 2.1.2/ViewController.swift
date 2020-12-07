//
//  ViewController.swift
//  HW 2.1.2
//
//  Created by Евгений Косовский on 07.12.2020.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redView: UIView!
    @IBOutlet var orangeView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var button: UIButton!
    
    var currentColor = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.layer.cornerRadius = 75
        orangeView.layer.cornerRadius = 75
        greenView.layer.cornerRadius = 75
        button.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }

    
    @IBAction func buttonClick() {
        if(currentColor == 0) {
            button.setTitle("Next", for: .normal)
        }
        
        switch(currentColor) {
        case 1: redView.alpha = 0.3
        case 2: orangeView.alpha = 0.3
        case 3: greenView.alpha = 0.3
        default: break
        }
        
        if(currentColor < 3) {
            currentColor += 1
        }
        else {
            currentColor = 1
        }
        
        switch(currentColor) {
        case 1: redView.alpha = 1
        case 2: orangeView.alpha = 1
        case 3: greenView.alpha = 1
        default: break
        }
        
        
    }
    
}

