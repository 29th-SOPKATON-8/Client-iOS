//
//  CompleteVC.swift
//  Client-iOS
//
//  Created by Thisisme Hi on 2021/11/21.
//

import UIKit

import SnapKit
import Then

class CompleteVC: UIViewController {
    
    // MARK: - Properties
        
    private let plateImageView = UIImageView().then {
        $0.image = UIImage(named: "step0")
    }
    
    private let crumbImageView = UIImageView().then {
        $0.image = UIImage(named: "imgCrumb")
    }
    
    private lazy var labelStackView = UIStackView().then {
        $0.axis = .vertical
        $0.spacing = 0
        $0.distribution = .fillEqually
        $0.addArrangedSubviews([xboyfriendLabel,
                                missLabel,
                                cleanLabel])
    }
    
    private let xboyfriendLabel = UILabel().then {
        $0.text = "전남친 토스트"
        $0.textColor = UIColor(red: 65.0 / 255.0, green: 118.0 / 255.0, blue: 1.0, alpha: 1.0)
        $0.font = .systemFont(ofSize: 24, weight: .semibold)
        $0.textAlignment = .center
    }
    
    private let missLabel = UILabel().then {
        $0.text = "그리워 하지말고,"
        $0.font = .systemFont(ofSize: 24, weight: .light)
        $0.textAlignment = .center
    }
    
    private let cleanLabel = UILabel().then {
        $0.text = "깔끔하게 잊어먹자!"
        $0.font = .systemFont(ofSize: 24, weight: .light)
        $0.addCharacterColor(color: UIColor(red: 65.0 / 255.0, green: 118.0 / 255.0, blue: 1.0, alpha: 1.0), range: "잊어먹자!")
        $0.textAlignment = .center
    }
    
    private lazy var makeButton = UIButton().then {
        $0.setTitle("새로운 토스트 만들러 가기", for: .normal)
        $0.titleLabel?.font = .boldSystemFont(ofSize: 21)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = UIColor(red: 65.0 / 255.0, green: 118.0 / 255.0, blue: 1.0, alpha: 1.0)
        $0.setShadow(radius: 20, offset: CGSize(width: 4, height: 4), opacity: 0.3, color: UIColor(red: 65.0 / 255.0, green: 118.0 / 255.0, blue: 1.0, alpha: 1.0))
        $0.cornerRound(radius: 20)
        $0.addTarget(self, action: #selector(touchupMakeButton(_:)), for: .touchUpInside)
    }
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAutoLayout()
    }
    
    // MARK: - Custom Method
    
    func setupAutoLayout() {
        view.backgroundColor = .white
        view.addSubviews([plateImageView, crumbImageView,
                          labelStackView, makeButton])
        
        plateImageView.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(104)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(500)
        }
        
        crumbImageView.snp.makeConstraints { make in
            make.top.equalTo(plateImageView.snp.top).inset(141)
            make.centerX.equalToSuperview()
            make.width.equalTo(32)
            make.height.equalTo(27)
        }
        
        labelStackView.snp.makeConstraints { make in
            make.top.equalTo(crumbImageView.snp.bottom).offset(32)
            make.centerX.equalToSuperview()
        }
        
        xboyfriendLabel.snp.makeConstraints { make in
            make.top.leading.trailing.equalToSuperview()
        }
        
        [missLabel, cleanLabel].forEach {
            $0.snp.makeConstraints { make in
                make.leading.trailing.equalToSuperview()
            }
        }
        
        makeButton.snp.makeConstraints { make in
            make.top.equalTo(labelStackView.snp.bottom).offset(194)
            make.centerX.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(55)
            make.height.equalTo(64)
        }
    }
    
    // MARK: - @objc
    
    @objc func touchupMakeButton(_ sender: UIButton) {
        print("새로만들기 버튼 클릭")
    }
}
