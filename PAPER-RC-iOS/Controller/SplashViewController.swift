//
//  SplashController.swift
//  PAPER-RC-iOS
//
//  Created by LeeSangHoon on 2017. 12. 27..
//  Copyright © 2017년 LeeSangHoon. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        DispatchQueue.main.asyncAfter(deadline: .now()+2.0, execute: {
            let nameSettingVC = UIStoryboard(name: "Main", bundle: nil)
                .instantiateViewController(withIdentifier: "NameSettingViewController") as! NameSettingViewController
            self.navigationController?.pushViewController(nameSettingVC, animated: true)
        })
    }
}

