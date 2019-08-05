//
//  ViewController.swift
//  changeIcon
//
//  Created by 张毅成 on 2019/8/5.
//  Copyright © 2019 张毅成. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTouchButtonChangeIcon(_ sender: UIButton) {
        if UIApplication.shared.supportsAlternateIcons {
            UIApplication.shared.setAlternateIconName("zyclogo") { (error) in
                if error != nil {
                    print("更换icon 错误")
                }
            }
        }
    }
    
    @IBAction func didTouchButtonReset(_ sender: UIButton) {
        if UIApplication.shared.supportsAlternateIcons {
            UIApplication.shared.setAlternateIconName(nil) { (error) in
                if error != nil {
                    print("更换icon 错误")
                }
            }
        }
    }
}

