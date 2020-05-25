//
//  NewsTableViewCell.swift
//  app-ios
//
//  Created by Admin on 25.05.2020.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

class NewsTableViewCell: UITableViewCell {

    @IBOutlet weak var authorImg: UIImageView!
    @IBOutlet weak var authorName: UILabel!
    @IBOutlet weak var publicationDate: UILabel!
    
    @IBOutlet weak var newsDescription: UITextView!
    @IBOutlet weak var newsDescriptionHC:NSLayoutConstraint!
    
    @IBOutlet weak var newsImg: UIImageView!
    @IBOutlet weak var newsLike: UIImageView!
    @IBOutlet weak var newsLikeCount: UILabel!
    @IBOutlet weak var discussion: UIImageView!
    @IBOutlet weak var discussionCount: UILabel!
    @IBOutlet weak var forward: UIImageView!
    @IBOutlet weak var forwardCount: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        authorImg.layer.cornerRadius = authorImg.frame.width / 2
        authorImg.layer.shadowColor = UIColor.black.cgColor
        authorImg.layer.shadowOpacity = 0.1
        authorImg.layer.shadowRadius = 1
        authorImg.layer.shadowOffset = CGSize.zero
        newsDescription.isEditable = false
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}
