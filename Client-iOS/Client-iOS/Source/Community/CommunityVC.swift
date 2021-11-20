//
//  CommunityVC.swift
//  Client-iOS
//
//  Created by 김혜수 on 2021/11/21.
//

import UIKit

class CommunityVC: UIViewController {
    
    @IBOutlet weak var titleCollectionView: UICollectionView!
    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setTableView()
        setCollectionView()
        // Do any additional setup after loading the view.
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
    
}

extension CommunityVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = titleCollectionView.dequeueReusableCell(withReuseIdentifier: CommunityCVC.identifier, for: indexPath) as? CommunityCVC else { return UICollectionViewCell() }
        cell.setData(title: "\(indexPath.row + 1)단계")
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
