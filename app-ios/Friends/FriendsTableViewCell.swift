import UIKit

class FriendsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var avatarFriend: UIImageView!
    @IBOutlet weak var avatarView: UIView!
    @IBOutlet weak var nameFriend: UILabel!
    @IBOutlet weak var cityFriend: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        avatarViewCircle()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func set (odject: user) {
        self.nameFriend.text = odject.name
        self.cityFriend.text = odject.city
        self.avatarFriend.image = odject.avatar
    }
    
    func avatarViewCircle() {
        avatarFriend.layer.cornerRadius = avatarFriend.frame.width / 2
        avatarView.layer.cornerRadius = avatarView.frame.width / 2
        avatarView.layer.shadowColor = UIColor.black.cgColor
        avatarView.layer.shadowOpacity = 0.5
        avatarView.layer.shadowRadius = 3
        avatarView.layer.shadowOffset = CGSize.zero
    }
    
}
