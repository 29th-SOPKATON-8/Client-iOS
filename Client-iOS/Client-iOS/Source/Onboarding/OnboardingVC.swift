//
//  OnboardingVC.swift
//  Client-iOS
//
//  Created by 김혜수 on 2021/11/21.
//

import UIKit

class OnboardingVC: UIViewController {
    
    // MARK: - Properties
    
    var maxLength: Int = 17
    
    // MARK: - @IBOutlet
    
    @IBOutlet weak var toastTextField: UITextField!
    @IBOutlet weak var lineView: UIView!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var makeButton: UIButton!
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
        setupTextField()
    }
    
    // MARK: - Custom Method
    
    private func configUI() {
        tabBarController?.tabBar.isHidden = true
        countLabel.text = "0/18"
        makeButton.cornerRound(radius: 20)
    }
    
    private func setupTextField() {
        toastTextField.delegate = self
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(textDidChange(_:)),
                                               name: UITextField.textDidChangeNotification,
                                               object: toastTextField)
    }
    
    // MARK: - @IBAction
    
    @IBAction func makeButton(_ sender: Any) {
        
    }
    
    // MARK: - @objc
    
    @objc private func textDidChange(_ notification: Notification) {
        if let textField = notification.object as? UITextField {
            if let text = textField.text {
                if text.count > maxLength { /// 18글자 넘어가면 자동으로 키보드 내려감
                    textField.resignFirstResponder()
                }
                /// 초과되는 텍스트 제거
                if text.count >= maxLength {
                    let index = text.index(text.startIndex, offsetBy: maxLength)
                    let newString = text[text.startIndex..<index]
                    textField.text = String(newString)
                }
            }
        }
    }
}

// MARK: - UITextFieldDelegate

extension OnboardingVC: UITextFieldDelegate {
    func textFieldDidChangeSelection(_ textField: UITextField) {
        guard let text = toastTextField.text else { return }
        if text.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty || text == toastTextField.placeholder {
            makeButton.isUserInteractionEnabled = false
            makeButton.backgroundColor = UIColor(white: 188.0 / 255.0, alpha: 1.0)
            lineView.backgroundColor = UIColor(white: 188.0 / 255.0, alpha: 1.0)
        } else {
            makeButton.isUserInteractionEnabled = true
            makeButton.backgroundColor = UIColor(red: 65.0 / 255.0, green: 118.0 / 255.0, blue: 1.0, alpha: 1.0)
            makeButton.setShadow(radius: 20, offset: CGSize(width: 4, height: 4), opacity: 0.3, color: .blue)
            lineView.backgroundColor = .black
        }
        countLabel.text = "\(text.count)/18"
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard let text = toastTextField.text else {return false}
        
        /// 최대 글자수 이상을 입력한 이후에는 중간에 다른 글자를 추가할 수 없게끔 작동
        if text.count >= maxLength && range.length == 0 && range.location < maxLength {
            return false
        }
        return true
    }
}
