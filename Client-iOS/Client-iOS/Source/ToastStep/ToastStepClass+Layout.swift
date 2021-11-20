//
//  ToastStepClass+Layout.swift
//  Client-iOS
//
//  Created by 홍진석 on 2021/11/21.
//

import Foundation
import UIKit

extension ToastStepClass {
    
    func setConstraints(){
        let screenHeightRatio = UIScreen.main.bounds.height / 812.0
        let screenWidthRatio = UIScreen.main.bounds.width / 375.0
        
        view.addSubviews([periodView, dishImg, mainLabel, subLabel, btnStackView])
        periodView.addSubview(periodLabel)
        
        periodLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        periodView.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(60)
            make.trailing.equalToSuperview().inset(20)
            make.width.equalTo(115 * screenWidthRatio)
            make.height.equalTo(36 * screenHeightRatio)
        }
        
        mainLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().inset(200)
        }
        
        subLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(mainLabel.snp.bottom).offset(30)
        }
        
        dishImg.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.height.equalTo(300)
            make.width.equalTo(300)
        }

        btnStackView.snp.makeConstraints { make in
            make.width.equalToSuperview().inset(50)
            make.centerX.equalToSuperview()
            make.height.equalTo(50)
            make.bottom.equalToSuperview().inset(30)
        }
    }
}
