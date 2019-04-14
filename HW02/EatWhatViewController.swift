//
//  EatWhatViewController.swift
//  HW02
//
//  Created by User04 on 2019/4/11.
//  Copyright © 2019 User04. All rights reserved.
//

import UIKit

class EatWhatViewController: UIViewController {

    @IBOutlet weak var breakfastLabel: UILabel!
    @IBOutlet weak var lunchLabel: UILabel!
    @IBOutlet weak var dinnerLabel: UILabel!
    @IBOutlet weak var foodView: FoodView!
    @IBOutlet weak var foodView2: FoodView!
    @IBOutlet weak var foodView3: FoodView!
    @IBOutlet weak var foodView4: FoodView!
    @IBOutlet weak var foodView5: FoodView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor(red: 1.0, green: 0, blue: 0, alpha: 0.2).cgColor, UIColor(red: 1.0, green: 1.0, blue: 0, alpha: 0.2).cgColor]
        view.layer.addSublayer(gradientLayer)
        
        foodView.backgroundColor = UIColor(red: 0.4824, green: 0.9098, blue: 0.949, alpha: 1)
        foodView2.backgroundColor = UIColor(red: 0.4824, green: 0.9098, blue: 0.949, alpha: 1)
        foodView3.backgroundColor = UIColor(red: 0.4824, green: 0.9098, blue: 0.949, alpha: 1)
        foodView4.backgroundColor = UIColor(red: 0.4824, green: 0.9098, blue: 0.949, alpha: 1)
        foodView5.backgroundColor = UIColor(red: 0.4824, green: 0.9098, blue: 0.949, alpha: 1)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func BreakfastRandomChange(_ sender: Any) {
        let firstSeries:[String] = ["地瓜","御飯糰","全麥土司","饅頭","燕麥片"]
        let secondSeries:[String] = ["鮪魚", "里肌肉", "起司片", "優格", "雞蛋"]
        let thirdSeries:[String] = ["黑咖啡", "拿鐵", "無糖茶", "低脂鮮奶", "無糖豆漿"]
        let fourthSeries:[String] = ["蘋果", "香蕉", "小番茄", "生菜沙拉", "奇異果"]
        var random:[Int] = [0, 0, 0, 0]
        for i in 0...3 {
            random[i] = Int.random(in: 0...4)
        }
        breakfastLabel.text = firstSeries[random[0]] + " + " + secondSeries[random[1]] + " + " + thirdSeries[random[2]] + " + " + fourthSeries[random[3]]
    }
    @IBAction func lunchRandomChange(_ sender: Any) {
        let firstSeries:[String] = ["嫩炒雞胸", "咖哩炒雞", "煎鮭魚肉", "薑汁燒肉"]
        let secondSeries:[String] = ["枸杞韭菜炒冬瓜", "椒鹽四季豆", "炒高麗菜", "蒜味香菇"]
        let thirdSeries:[String] = ["蔬菜烘蛋", "荷包蛋", "菜脯蛋", "蔥蛋"]
        let fourthSeries:[String] = ["豆豉燒豆腐", "什錦豆腐", "青菜豆腐湯", "紅燒豆腐"]
        var random:[Int] = [0, 0, 0, 0]
        for i in 0...3 {
            random[i] = Int.random(in: 0...3)
        }
        lunchLabel.text = "飯+" + firstSeries[random[0]] + " + " + secondSeries[random[1]] + " + " + thirdSeries[random[2]] + " + " + fourthSeries[random[3]]
        
    }
    
    @IBAction func dinnerRandomChange(_ sender: Any) {
        let firstSeries:[String] = ["蝦仁炒飯", "泡菜起司炒烏龍", "海鮮鍋", "牛五花燒肉飯", "牛排"]
        let secondSeries:[String] = ["香菇蛤蜊雞肉湯", "清燉洋蔥牛肉湯", "酸辣湯", "玉米濃湯", "魚湯"]
        var random:[Int] = [0, 0]
        random[0] = Int.random(in: 0...4)
        random[1] = Int.random(in: 0...4)
        dinnerLabel.text = firstSeries[random[0]] + " + " + secondSeries[random[1]]
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
