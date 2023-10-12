//
//  BackTableView.swift
//  slideMenuOrSideMenu
//
//  Created by Imcrinox Mac on 23/12/1444 AH.
//

import Foundation
import UIKit

class BlackTableView: UITableViewController {
    
    var tableArray = [String]()
    
    override func viewDidLoad() {
         tableArray = ["FriendRead","Article","ReadLater"]
        self.tableView.tableFooterView = UIView(frame: .zero)
        self.tableView.separatorColor = UIColor(red:0.159, green:0.156, blue:0.181, alpha:1)
        self.view.backgroundColor = UIColor.black
//        self.tableView.separatorColor = .cyan
//        self.view.backgroundColor = UIColor.red
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableArray.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: tableArray[indexPath.row], for: indexPath)
        cell.textLabel?.text = tableArray[indexPath.row]
        cell.backgroundColor = .clear
        cell.textLabel?.textColor = .white
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedCell:UITableViewCell = tableView.cellForRow(at: indexPath)!
        selectedCell.contentView.backgroundColor = UIColor(red:0.245, green:0.247, blue:0.272, alpha:0.817)
    }
}
