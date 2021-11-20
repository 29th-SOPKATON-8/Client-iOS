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
        
        view.addSubviews([periodView, dishImg, mainLabel, subLabel, btnStackView, textImgView, textView])
        periodView.addSubview(periodLabel)
        
        periodLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        periodView.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(61)
            make.trailing.equalToSuperview().inset(19)
            make.width.equalTo(115 * screenWidthRatio)
            make.height.equalTo(36 * screenHeightRatio)
        }
        
        mainLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().inset(124 * screenHeightRatio)
        }
        
        subLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(mainLabel.snp.bottom).offset(16 * screenHeightRatio)
        }
        
        dishImg.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(104 * screenHeightRatio)
            make.height.equalTo(500 * screenHeightRatio)
            make.width.equalToSuperview()
        }
        
        textImgView.snp.makeConstraints { make in
            make.width.equalTo(298 * screenWidthRatio)
            make.height.equalTo(132 * screenHeightRatio)
            make.centerX.equalToSuperview()
            make.top.equalTo(subLabel.snp.bottom).offset(276 * screenHeightRatio)

        }
        textView.snp.makeConstraints { make in
            make.center.equalTo(textImgView)
            make.width.equalTo(textImgView.snp.width).inset(30)
            make.height.equalTo(textImgView.snp.height).inset(20)
        }
        
        btnStackView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.height.equalTo(50 * screenHeightRatio)
            make.top.equalTo(textImgView.snp.bottom).offset(40 * screenHeightRatio)
        }
    }
}
