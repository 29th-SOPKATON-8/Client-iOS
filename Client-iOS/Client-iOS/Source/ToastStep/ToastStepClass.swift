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
        $0.backgroundColor = .red
        $0.cornerRound(radius: 10)
    }
    lazy var periodLabel = UILabel().then {
        $0.text = "만들기 1일차"
        $0.font = UIFont(name: "AppleSDGothicNeo", size: 18)
    }
    
    var mainLabel = UILabel().then {
        $0.text = "Main Label"
        $0.font = UIFont(name: "AppleSDGothicNeo", size: 24)
    }
    
    var subLabel = UILabel().then {
        $0.text = "Sub Label"
        $0.font = UIFont(name: "AppleSDGothicNeo", size: 20)
    }
    
    var dishImg = UIImageView().then() {
        $0.backgroundColor = .blue
    }
    
    var leftBtn = UIButton().then {
        $0.setTitle("left", for: .normal)
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
    
//    var textView = UITextView().then {
//    }
//
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

        setConstraints()
        setView()
    }
    
    func setView(){
        view.backgroundColor = .white
        btnStackView.addArrangedSubviews([leftBtn,rightBtn])
    }
    
    func setToastStepData(){
        
    }
    
}
