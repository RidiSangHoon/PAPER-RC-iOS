//
//  ViewController.swift
//  PAPER-RC-iOS
//
//  Created by LeeSangHoon on 2017. 12. 27..
//  Copyright © 2017년 LeeSangHoon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var jmdnsHelper: JmdnsHelper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        jmdnsHelper = JmdnsHelper()
        jmdnsHelper.onStart()
    }
}
