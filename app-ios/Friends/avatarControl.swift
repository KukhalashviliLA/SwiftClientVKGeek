import UIKit

@IBDesignable class AvatarControl: UIView {
    
    var avatar = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setapAvatar()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setapAvatar() 
    }

    func setapAvatar() {
        let avatar = UIImageView(frame: self.bounds)
        avatar.layer.cornerRadius = self.frame.width / 2
        self.addSubview(avatar)
        
        }
    
    @IBInspectable var shadowOpacity: Float = 1 {
        didSet {
            setNeedsDisplay()
        }
    }
    
    override func draw(_ rect: CGRect) {
        self.layer.cornerRadius = self.frame.width / 2
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = shadowOpacity
        self.layer.shadowRadius = 5
        self.layer.shadowOffset = .zero
        
    }
    

}
