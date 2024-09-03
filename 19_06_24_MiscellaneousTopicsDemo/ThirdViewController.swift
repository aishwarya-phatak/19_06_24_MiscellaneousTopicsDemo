//
//  ThirdViewController.swift
//  19_06_24_MiscellaneousTopicsDemo
//
//  Created by Vishal Jagtap on 03/09/24.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var sliderValueDisplayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSettingsForLabel()
        initialSettingsForSlider()
    }
    
    private func initialSettingsForLabel(){
        self.sliderValueDisplayLabel.text = String(0.0)
        self.sliderValueDisplayLabel.backgroundColor = .white
        self.sliderValueDisplayLabel.textColor = .brown
        self.sliderValueDisplayLabel.font = .systemFont(ofSize: 20.0)
    }
    
    private func initialSettingsForSlider(){
        self.slider.minimumValue = 10000.0
        self.slider.maximumValue = 100000.0
        self.slider.minimumTrackTintColor = .orange
        self.slider.backgroundColor = .lightGray
        self.slider.preferredBehavioralStyle = .automatic
    }
    
    
    @IBAction func slider(_ sender: UISlider) {
        self.sliderValueDisplayLabel.text = String(sender.value)
    }
}
