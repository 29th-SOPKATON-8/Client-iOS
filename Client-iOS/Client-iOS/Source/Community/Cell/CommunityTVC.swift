//
//  CommunityTVC.swift
//  Client-iOS
//
//  Created by κΉνμ on 2021/11/21.
//

import UIKit

class CommunityTVC: UITableViewCell {
    
    public static let identifier = "CommunityTVC"

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var bgView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        setUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setUI() {
        bgView.layer.cornerRadius = 20
        bgView.setShadow(radius: 10, offset: CGSize(width: 2, height: 2), opacity: 0.10)
    }
    
    func setData(content: String, name: String) {
        nameLabel.text = name
        contentLabel.text = content
    }

}
