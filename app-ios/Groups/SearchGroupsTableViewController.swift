//
//  SearchGroupsTableViewController.swift
//  app-ios
//
//  Created by Admin on 21.05.2020.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

class SearchGroupsTableViewController: UITableViewController {
    
        override func viewDidLoad() {
            super.viewDidLoad()
            
            
//            tableView.register(UITableViewCell.self, forCellReuseIdentifier: "SearchGroupsTableViewCell")
        }


    
        override func numberOfSections(in tableView: UITableView) -> Int {

            return 1
        }

        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

            return allGroups.count
        }

        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SearchGroupsTableViewCell", for: indexPath) as! SearchGroupsTableViewCell
            cell.avatarImg.image = allGroups[indexPath.row].avatarImg
            cell.userName.text = allGroups[indexPath.row].name
            cell.userSity.text = allGroups[indexPath.row].description
            return cell
        }
}
