//
//  PaperSettingViewController.swift
//  PAPER-RC-iOS
//
//  Created by LeeSangHoon on 2017. 12. 27..
//  Copyright © 2017년 LeeSangHoon. All rights reserved.
//

import UIKit

class PaperSettingViewController: UIViewController {
    
    @IBAction func wifiNetworkSettingBtnTapped(_ sender: Any) {
        UIApplication.shared.openURL(URL(string: "App-Prefs:root=WIFI")!)
    }
    
    @IBAction func detailBtnTapped(_ sender: Any) {
        
    }
}
