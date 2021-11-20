//
//  UILabel +.swift
//  Client-iOS
//
//  Created by 김혜수 on 2021/11/20.
//


import UIKit

extension UILabel {
    /// 행간을 조정하는 함수
    func lineSpacing(spacing: CGFloat) {
        if let text = self.text {
            let attributeString = NSMutableAttributedString(string: text)
            let style = NSMutableParagraphStyle()

            style.lineSpacing = spacing

            attributeString.addAttribute(NSAttributedString.Key.paragraphStyle, value: style, range: NSMakeRange(0, attributeString.length))
            self.attributedText = attributeString
        }
    }
    
    func calculateLabelSize(text: String, font: UIFont) -> CGSize {
        let label = UILabel()
        label.text = text
        label.font = font
        label.sizeToFit()
        
        return label.bounds.size
    }
    
    func addCharacterColor(color: UIColor, range: String) {
        if let labelText = text, labelText.count > 0 {
            let attributedStr = NSMutableAttributedString(string: labelText)
            attributedStr.addAttribute(.foregroundColor, value: color, range: (labelText as NSString).range(of: range))
            attributedStr.addAttribute(.font, value: UIFont.systemFont(ofSize: 24, weight: .semibold), range: (labelText as NSString).range(of: range))
            attributedText = attributedStr
        }
    }
}
