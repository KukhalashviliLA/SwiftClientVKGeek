import UIKit

class FriendsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var avatarFriend: UIImageView!
    
    @IBOutlet weak var nameFriend: UILabel!
    
    @IBOutlet weak var cityFriend: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func set (odject: user) {
        self.nameFriend.text = odject.name
        self.cityFriend.text = odject.city
        self.avatarFriend.image = odject.avatar
    }
    
}
