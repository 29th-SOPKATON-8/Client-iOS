//
//  UIStackView +.swift
//  Client-iOS
//
//  Created by κΉνμ on 2021/11/20.
//

import UIKit

extension UIStackView {
    public func addArrangedSubviews(_ view: [UIView]) {
        view.forEach{ self.addArrangedSubview($0) }
    }
}

