//
//  CommunityVC.swift
//  Client-iOS
//
//  Created by 김혜수 on 2021/11/21.
//

import UIKit

class CommunityVC: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setTableView()
        // Do any additional setup after loading the view.
    }
    
    func setTableView() {
        tableview.delegate = self
        tableview.dataSource = self
    }
    
}

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
