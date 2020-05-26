import UIKit

class LikeView: UIControl {
    
    var flag = false
    let lable = UILabel(frame: CGRect(x: 20, y: 17, width: 13, height: 13))
    let image = UIImage(systemName: "heart")
    let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        uisetup()
    }
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        uisetup()
    }
    
    func uisetup() {
        self.backgroundColor = .clear
        imageView.image = image
        imageView.tintColor = .gray
        imageView.contentMode = .scaleAspectFit
        lable.text = "0"
        lable.textColor = .white
        self.addSubview(lable)
        self.addSubview(imageView)
        
    }
    override func beginTracking(_ touch: UITouch, with event: UIEvent?) -> Bool {
        
        
        return true
    }
    
    override func endTracking(_ touch: UITouch?, with event: UIEvent?) {
        
        if flag {
            lable.text = "1"
            imageView.tintColor = .red
            flag = false
        } else {
            lable.text = "0"
            imageView.tintColor = .gray
            flag = true
            
        }
    }
    
}
