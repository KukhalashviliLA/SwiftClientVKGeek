import UIKit

class GroupsTableViewCell: UITableViewCell {

    @IBOutlet weak var avatarGroup: UIImageView!
    
    @IBOutlet weak var nameGroup: UILabel!
    
    @IBOutlet weak var ferstnameGroup: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func set (odject: group) {
        self.nameGroup.text = odject.name
        self.ferstnameGroup.text = odject.description
        self.avatarGroup.image = odject.avatarImg
    }
    
}
