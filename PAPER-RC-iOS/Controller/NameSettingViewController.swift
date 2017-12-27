//
//  NameSettingViewController.swift
//  PAPER-RC-iOS
//
//  Created by LeeSangHoon on 2017. 12. 27..
//  Copyright © 2017년 LeeSangHoon. All rights reserved.
//

import UIKit

class NameSettingViewController: UIViewController {
    
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var descText: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        nextBtn.isEnabled = false
        nameInput.delegate = self
    }
    
    @IBAction func nameInputChanged(_ sender: Any) {
        let name = nameInput.text!
        print("name => \(name) name.length => \(name.count)")
        if(name.isEmpty){
            nextBtn.isEnabled = false
            descText.text = "이름을 입력해주세요."
        }else {
            nextBtn.isEnabled = true
            if(name.count == 30){
                descText.text = "30자 이내로 설정해주세요."
            } else {
                descText.text = ""
            }
        }
    }
    
    @IBAction func nextBtnTapped(_ sender: Any) {
        let paperSettingVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PaperSettingViewController") as! PaperSettingViewController
        self.navigationController?.pushViewController(paperSettingVC, animated: true)
    }
}

extension NameSettingViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard let text = textField.text else { return true }
        let newLength = text.count + string.count - range.length
        return newLength <= 30
    }
}

