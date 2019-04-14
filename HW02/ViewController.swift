//
//  ViewController.swift
//  HW02
//
//  Created by User04 on 2019/4/1.
//  Copyright © 2019 User04. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var sexSwitch: UISwitch!
    @IBOutlet weak var ageSlider: UISlider!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var activitySegmentedControl: UISegmentedControl!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var sportView: SportView!
    @IBOutlet weak var sportView2: SportView!
    @IBOutlet weak var sportView3: SportView!
    @IBOutlet weak var sportView4: SportView!
    @IBOutlet weak var sportView5: SportView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor(red: 1.0, green: 0, blue: 0, alpha: 0.2).cgColor, UIColor(red: 1.0, green: 1.0, blue: 0, alpha: 0.2).cgColor]
        view.layer.addSublayer(gradientLayer)
        
        sportView.backgroundColor = UIColor(red: 0.4824, green: 0.9098, blue: 0.949, alpha: 1)
        sportView2.backgroundColor = UIColor(red: 0.4824, green: 0.9098, blue: 0.949, alpha: 1)
        sportView3.backgroundColor = UIColor(red: 0.4824, green: 0.9098, blue: 0.949, alpha: 1)
        sportView4.backgroundColor = UIColor(red: 0.4824, green: 0.9098, blue: 0.949, alpha: 1)
        sportView5.backgroundColor = UIColor(red: 0.4824, green: 0.9098, blue: 0.949, alpha: 1)
    }
    @IBAction func ageSliderChange(_ sender: UISlider) {
        ageLabel.text = String(format: "%d", Int(ageSlider.value))
    }
    
    var activityRate = 1.2
    @IBAction func activityChange(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            activityRate = 1.2
        }
        else if sender.selectedSegmentIndex == 1 {
            activityRate = 1.375
        }
        else if sender.selectedSegmentIndex == 2 {
            activityRate = 1.55
        }
        else if sender.selectedSegmentIndex == 3 {
            activityRate = 1.725
        }
        else {
            activityRate = 1.9
        }
    }
    @IBAction func okButtonPressed(_ sender: Any) {
        var BMR = 0.0
        var TDEE = 0.0
        if let weightText = weightTextField.text, let heightText = heightTextField.text, let ageText = ageLabel.text, let weight = Double(weightText), let height = Double(heightText), let age = Double(ageText) {
            if sexSwitch.isOn { // 女
                BMR = 9.6 * weight + 1.8 * height - 4.7 * age + 655
            }
            else { // 男
                BMR = 13.7 * weight + 5 * height - 6.8 * age + 66
            }
        }
        TDEE = BMR * activityRate;
        //answerLabel.numberOfLines = 0
        
        answerLabel.text = "嗨！" + nameTextField.text! + "！\n你的基礎代謝率(BMR)是" + String(format:"%.1f", BMR) + "大卡\n你的總熱量消耗(TDEE)是" + String(format:"%.1f", TDEE) + "大卡\n如果想減肥請一天吃" + String(format:"%.1f", TDEE-300) + "大卡\n如果想增肌請吃" + String(format:"%.1f", TDEE+300) + "大卡"
    }
    @IBAction func closeKeyBoard(_ sender: Any) {
    }
    

}

