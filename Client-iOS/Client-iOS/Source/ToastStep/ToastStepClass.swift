//
//  ToastStepClass.swift
//  Client-iOS
//
//  Created by 김혜수 on 2021/11/21.
//

import UIKit
import Then
import SnapKit

class ToastStepClass: UIViewController {
    
    // MARK: - UIComponenets
    var periodView = UIView().then {
        $0.backgroundColor = .white
        $0.cornerRound(radius: 10)
    }
    lazy var periodLabel = UILabel().then {
        $0.text = "만들기 1일차"
        $0.tintColor = UIColor.gray01
        $0.font = .systemFont(ofSize: 18, weight: .regular)
    }
    
    var mainLabel = UILabel().then {
        $0.text = "Main Label"
        $0.font = .systemFont(ofSize: 24, weight: .medium)
        $0.tintColor = UIColor.blue
    }
    
    var subLabel = UILabel().then {
        $0.text = "Sub Label"
        $0.font = .systemFont(ofSize: 20, weight: .regular)
    }
    
    var dishImg = UIImageView().then() {
        $0.image = UIImage(named: "step1")
    }
    
    var leftBtn = UIButton().then {
        //$0.setImage(UIImage(named: <#T##String#>), for: <#T##UIControl.State#>)
        $0.backgroundColor = .red
    }
    
    var rightBtn = UIButton().then {
        $0.setTitle("right", for: .normal)
        $0.backgroundColor = .red
    }
    var btnStackView = UIStackView().then {
        $0.backgroundColor = .gray
        $0.distribution = .fillEqually
        $0.spacing = 10
        $0.axis = .horizontal
    }
     
    var textImgView = UIImageView().then {
        $0.image = UIImage(named: "Group")
    }
    
    var textView = UITextView().then {
        $0.backgroundColor = .clear
    }

    init() {
        super.init(nibName: nil, bundle: nil)
        setToastStepData()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        textView.delegate = self
//
        setConstraints()
        setView()
    }
    
    func setView(){
        view.backgroundColor = UIColor(white: 251.0 / 255.0, alpha: 1.0)
        btnStackView.addArrangedSubviews([leftBtn,rightBtn])
    }
    
    func setToastStepData(){
        
    }
    
}
