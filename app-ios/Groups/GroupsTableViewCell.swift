import UIKit

class GroupsTableViewCell: UITableViewCell {

    @IBOutlet weak var avatarGroup: UIImageView!
    @IBOutlet weak var avatarGroupView: UIView!
    
    @IBOutlet weak var nameGroup: UILabel!
    
    @IBOutlet weak var ferstnameGroup: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        avatarGroupcircle()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func set (odject: group) {
        self.nameGroup.text = odject.name
        self.ferstnameGroup.text = odject.description
        self.avatarGroup.image = odject.avatarImg
    }
    
    func avatarGroupcircle() {
            avatarGroup.layer.cornerRadius = avatarGroup.frame.width / 2
            avatarGroupView.layer.cornerRadius = avatarGroupView.frame.width / 2
            avatarGroupView.layer.shadowColor = UIColor.black.cgColor
            avatarGroupView.layer.shadowOpacity = 0.1
            avatarGroupView.layer.shadowRadius = 1
            avatarGroupView.layer.shadowOffset = CGSize.zero
       }
}
