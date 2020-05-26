import UIKit

class FriendsTableViewCell: UITableViewCell {
    
//    @IBOutlet weak var avatarFriend: UIImageView!
    @IBOutlet weak var nameFriend: UILabel!
    @IBOutlet weak var cityFriend: UILabel!
    @IBOutlet weak var avatarControl: AvatarControl!
    @IBOutlet weak var avatarFriend: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        avatarFriend.layer.cornerRadius = avatarFriend.frame.width / 2
        avatarFriend.layer.cornerRadius = avatarFriend.frame.width / 2
        avatarFriend.layer.shadowColor = UIColor.black.cgColor
        avatarFriend.layer.shadowOpacity = 0.1
        avatarFriend.layer.shadowRadius = 1
        avatarFriend.layer.shadowOffset = CGSize.zero
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

    
}
