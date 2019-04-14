//
//  AgeCounterViewController.swift
//  HW02
//
//  Created by User04 on 2019/4/11.
//  Copyright © 2019 User04. All rights reserved.
//

import UIKit

class AgeCounterViewController: UIViewController {

    @IBOutlet weak var BirthdayDatePicker: UIDatePicker!
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor(red: 1.0, green: 0, blue: 0, alpha: 0.2).cgColor, UIColor(red: 1.0, green: 1.0, blue: 0, alpha: 0.2).cgColor]
        view.layer.addSublayer(gradientLayer)
        // Do any additional setup after loading the view.
    }
    var birthday = "2000年01月01日"
    var year = 2000
    var month = 1
    var date = 1
    @IBAction func BirthdayChange(_ sender: UIDatePicker) {
        
        let formatter = DateFormatter()
        //日期样式
        formatter.dateFormat = "yyyy年MM月dd日"
        birthday = formatter.string(from: sender.date)
        
        var start = birthday.index(birthday.startIndex, offsetBy: 0)
        var end = birthday.index(birthday.startIndex, offsetBy: 4)
        var range = start..<end
        year = Int(birthday.substring(with: range))!
        
        start = birthday.index(birthday.startIndex, offsetBy: 5)
        end = birthday.index(birthday.startIndex, offsetBy: 7)
        range = start..<end
        month = Int(birthday.substring(with: range))!
        
        start = birthday.index(birthday.startIndex, offsetBy: 8)
        end = birthday.index(birthday.startIndex, offsetBy: 10)
        range = start..<end
        date = Int(birthday.substring(with: range))!
    }
    @IBAction func inquireButton(_ sender: Any) {
        var age = 0, nowYear = 0, nowMonth = 0, nowDate = 0;
        let now = Date()
        let dformatter = DateFormatter()
        dformatter.dateFormat = "yyyy年MM月dd日"
        let nowString = dformatter.string(from: now)
        var start = nowString.index(nowString.startIndex, offsetBy: 0)
        var end = nowString.index(nowString.startIndex, offsetBy: 4)
        var range = start..<end
        nowYear = Int(nowString.substring(with: range))!
        
        start = nowString.index(nowString.startIndex, offsetBy: 5)
        end = nowString.index(nowString.startIndex, offsetBy: 7)
        range = start..<end
        nowMonth = Int(nowString.substring(with: range))!
        
        start = nowString.index(nowString.startIndex, offsetBy: 8)
        end = nowString.index(nowString.startIndex, offsetBy: 10)
        range = start..<end
        nowDate = Int(nowString.substring(with: range))!
        if nowMonth - month < 0
            {
                age = nowYear - year - 1;
        }
        else if nowMonth - month == 0 {
            if(nowDate - date < 0){
                age = nowYear - year - 1;
            }
            else{
                age = nowYear - year;
            }
        }
        else {
            age = nowYear - year;
        }
        
        if age < 0 {
            age = 0;
        }
        resultLabel.text = "你的生日是 " + String(birthday) + "\n你現在 " + String(age) + "歲"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
