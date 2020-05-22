//
//  SearchGroupsTableViewCell.swift
//  app-ios
//
//  Created by Admin on 21.05.2020.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

class SearchGroupsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var avatarImg: UIImageView!
    
    @IBOutlet weak var userName: UILabel!
    
    @IBOutlet weak var userSity: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)


    }

}
