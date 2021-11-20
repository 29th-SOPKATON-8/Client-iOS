//
//  CommunityCVC.swift
//  Client-iOS
//
//  Created by 김혜수 on 2021/11/21.
//

import UIKit

class CommunityCVC: UICollectionViewCell {
    
    public static let identifier = "CommunityCVC"
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setData(title: String) {
        titleLabel.text = title
    }
    
}
