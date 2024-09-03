//
//  SecondViewController.swift
//  19_06_24_MiscellaneousTopicsDemo
//
//  Created by Vishal Jagtap on 03/09/24.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var counterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSettingsForLabel()
        initialSettingsForStepper()
    }
    
    private func initialSettingsForLabel(){
        self.counterLabel.text = String(0)
        self.counterLabel.backgroundColor = .lightGray
        self.counterLabel.textColor = .black
        self.counterLabel.textAlignment = .center
        self.counterLabel.font = .systemFont(ofSize: 20.0)
    }
    
    private func initialSettingsForStepper(){
        self.stepper.minimumValue = -10
        self.stepper.maximumValue = 10
        self.stepper.stepValue = 1.0
        self.stepper.autorepeat = true
        self.stepper.isContinuous = true
        self.stepper.backgroundColor = .brown
    }
    
    @IBAction func stepperControl(_ sender: UIStepper) {
        self.counterLabel.text = String(sender.value)
    }
}
