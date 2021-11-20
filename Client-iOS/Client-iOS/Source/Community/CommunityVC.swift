//
//  CommunityVC.swift
//  Client-iOS
//
//  Created by 김혜수 on 2021/11/21.
//

import UIKit

class CommunityVC: UIViewController {
    
    var nowPage: Int = 0
    static var isCommunity: Bool = true
    static var week: Int = 1
    
    @IBOutlet weak var navigationTitleLabel: UILabel!
    @IBOutlet weak var tableviewTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var indicatorBarConstraint: NSLayoutConstraint!
    @IBOutlet weak var indicatorBar: UIView!
    @IBOutlet weak var titleCollectionView: UICollectionView!
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTableView()
        setCollectionView()
        
        if CommunityVC.isCommunity == true {
            navigationTitleLabel.text = "커뮤니티"
            titleCollectionView.isHidden = false
            tableviewTopConstraint.constant = 58
            indicatorBar.isHidden = false
        } else {
            navigationTitleLabel.text = "\(CommunityVC.week)주차"
            titleCollectionView.isHidden = true
            tableviewTopConstraint.constant = 0
            indicatorBar.isHidden = true
        }
    }
    
    func setTableView() {
        tableview.delegate = self
        tableview.dataSource = self
    }
    
    func setCollectionView() {
        titleCollectionView.delegate = self
        titleCollectionView.dataSource = self
    }
}


// MARK: - TableView
extension CommunityVC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 119
    }
}

extension CommunityVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CommunityTVC.identifier, for: indexPath) as? CommunityTVC else { return UITableViewCell()}
        return cell
    }
    
    
}

// MARK: - CollectionView
extension CommunityVC: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        /// TODO - [] API 호출 - 테이블 뷰 reload
        
        nowPage = indexPath.row
        
        // indicator 애니메이션
        let change = 24 + ((UIScreen.main.bounds.width/4) * CGFloat(self.nowPage))
        self.indicatorBarConstraint.constant = change - CGFloat(4 * nowPage)
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
        
        collectionView.reloadData()
        
    }
}

extension CommunityVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = titleCollectionView.dequeueReusableCell(withReuseIdentifier: CommunityCVC.identifier, for: indexPath) as? CommunityCVC else { return UICollectionViewCell() }
        if nowPage == indexPath.row {
            cell.setData(title: "\(indexPath.row + 1)단계", selected: true)
        } else {
            cell.setData(title: "\(indexPath.row + 1)단계", selected: false)
        }
        
        return cell
    }
    
    
}

extension CommunityVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (UIScreen.main.bounds.width - 20) / 4, height: 58)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
