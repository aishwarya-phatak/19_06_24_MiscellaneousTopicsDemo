//
//  ViewController.swift
//  19_06_24_MiscellaneousTopicsDemo
//
//  Created by Vishal Jagtap on 30/08/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelForDateDisplay: UILabel!

    @IBOutlet weak var datePicker: UIDatePicker!
    let dateFormatter = DateFormatter()

    override func viewDidLoad() {
        super.viewDidLoad()
        initialSettings()
    }
    
    private func initialSettings(){
        datePicker.datePickerMode = .dateAndTime
        datePicker.preferredDatePickerStyle = .compact
        datePicker.layer.cornerRadius = 6.0
        datePicker.backgroundColor = .brown
        datePicker.timeZone =  TimeZone(secondsFromGMT: 0)
        dateFormatter.dateFormat = "dd/MM/yyyy"
        self.labelForDateDisplay.backgroundColor = .lightGray
        self.labelForDateDisplay.text = dateFormatter.string(from: datePicker.date)
    }
    
    @IBAction func datePicker(_ sender: UIDatePicker) {
        self.labelForDateDisplay.text = dateFormatter.string(from: sender.date)
        self.dismiss(animated: true)
        //to dismiss the datepicker the moment date has been selected
    }
}
