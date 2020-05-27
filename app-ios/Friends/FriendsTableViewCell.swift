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

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        animate(isHighlighted: true)
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        animate(isHighlighted: false)
    }

    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesCancelled(touches, with: event)
        animate(isHighlighted: false)
    }

    private func animate(isHighlighted: Bool, completion: ((Bool) -> Void)?=nil) {
        let animationOptions: UIView.AnimationOptions = [.allowUserInteraction]
        if isHighlighted {
            UIView.animate(withDuration: 0.5,
                           delay: 0,
                           usingSpringWithDamping: 0.5,
                           initialSpringVelocity: 0,
                           options: animationOptions, animations: {
                            self.avatarControl.transform = .init(scaleX: 1.1, y: 1.1)
            }, completion: completion)
        } else {
            UIView.animate(withDuration: 0.5,
                           delay: 0,
                           usingSpringWithDamping: 0.5,
                           initialSpringVelocity: 0,
                           options: animationOptions, animations: {
                            self.avatarControl.transform = .identity
            }, completion: completion)
        }
    }
}
