//
//  UIStackView +.swift
//  Client-iOS
//
//  Created by 김혜수 on 2021/11/20.
//

import UIKit

extension UIStackView {
    public func addArrangedSubviews(_ view: [UIView]) {
        view.forEach{ self.addArrangedSubview($0) }
    }
}

