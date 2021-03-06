//
//  CommunityCVC.swift
//  Client-iOS
//
//  Created by κΉνμ on 2021/11/21.
//

import UIKit

class CommunityCVC: UICollectionViewCell {
    
    public static let identifier = "CommunityCVC"
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setData(title: String, selected: Bool) {
        titleLabel.text = title
        if selected == true {
            titleLabel.textColor = UIColor(red: 0.25, green: 0.45, blue: 1.0, alpha: 1.0)
        } else {
            titleLabel.textColor = .lightGray
        }
    }
    
}
