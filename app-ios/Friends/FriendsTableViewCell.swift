import UIKit

class FriendsTableViewCell: UITableViewCell {
    
//    @IBOutlet weak var avatarFriend: UIImageView!
    @IBOutlet weak var nameFriend: UILabel!
    @IBOutlet weak var cityFriend: UILabel!
    @IBOutlet weak var avatarControl: AvatarControl!
    
    override func awakeFromNib() {
        super.awakeFromNib()


    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

    
}
