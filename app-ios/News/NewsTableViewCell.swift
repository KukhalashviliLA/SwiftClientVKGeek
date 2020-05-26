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
        iuSet()
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
//        forward.tintColor = .green
    }
    
    func iuSet() {
        authorImg.layer.cornerRadius = authorImg.frame.width / 2
        authorImg.layer.shadowColor = UIColor.black.cgColor
        authorImg.layer.shadowOpacity = 0.1
        authorImg.layer.shadowRadius = 1
        authorImg.layer.shadowOffset = CGSize.zero
        newsDescription.isEditable = false
        //        newsLike.image = UIImage(systemName: "heart")
        //        newsLike.tintColor = .gray
        //        discussion.image = UIImage(systemName: "message")
        //        discussion.tintColor = .gray
        //        forward.image = UIImage(systemName: "arrowshape.turn.up.right")
        //        forward.tintColor = .gray
    }
}

class Like: UIControl {
    
    var flag = false
    let lableLike = UILabel(frame: CGRect(x: 30, y: 7, width: 13, height: 13))
    let imageLike = UIImage(systemName: "heart.fill")
    var imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 26, height: 26))
    
    
    
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
        imageView.image = imageLike
        imageView.tintColor = .gray
        imageView.contentMode = .scaleAspectFit
        lableLike.text = "0"
        lableLike.textColor = .gray
        self.addSubview(lableLike)
        self.addSubview(imageView)
        
    }
    override func beginTracking(_ touch: UITouch, with event: UIEvent?) -> Bool {
        
        
        return true
    }
    
    override func endTracking(_ touch: UITouch?, with event: UIEvent?) {
        
        if flag {
            lableLike.text = "1"
            imageView.tintColor = .red
            flag = false
        } else {
            lableLike.text = "0"
            imageView.tintColor = .gray
            flag = true
            
        }
    }
}

class Discussion: UIControl {
    
    var flag = false
    let lablediscussion = UILabel(frame: CGRect(x: 45, y: 7, width: 13, height: 13))
    let imagediscussion = UIImage(systemName: "message.fill")
    var imageView = UIImageView(frame: CGRect(x: 15, y: 0, width: 26, height: 26))
    
    
    
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
        imageView.image = imagediscussion
        imageView.tintColor = .gray
        imageView.contentMode = .scaleAspectFit
        lablediscussion.text = "0"
        lablediscussion.textColor = .gray
        self.addSubview(lablediscussion)
        self.addSubview(imageView)
        
    }
    override func beginTracking(_ touch: UITouch, with event: UIEvent?) -> Bool {
        
        
        return true
    }
    
    override func endTracking(_ touch: UITouch?, with event: UIEvent?) {
        
        if flag {
            lablediscussion.text = "1"
            imageView.tintColor = .red
            flag = false
        } else {
            lablediscussion.text = "0"
            imageView.tintColor = .gray
            flag = true
            
        }
    }
}

class Forward: UIControl {
    
    var flag = false
    let lableForward = UILabel(frame: CGRect(x: 60, y: 7, width: 13, height: 13))
    let imageForward = UIImage(systemName: "arrowshape.turn.up.right.fill")
    var imageView = UIImageView(frame: CGRect(x: 30, y: 0, width: 26, height: 26))
    
    
    
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
        imageView.image = imageForward
        imageView.tintColor = .gray
        imageView.contentMode = .scaleAspectFit
        lableForward.text = "0"
        lableForward.textColor = .gray
        self.addSubview(lableForward)
        self.addSubview(imageView)
        
    }
    override func beginTracking(_ touch: UITouch, with event: UIEvent?) -> Bool {
        
        
        return true
    }
    
    override func endTracking(_ touch: UITouch?, with event: UIEvent?) {
        
        if flag {
            lableForward.text = "1"
            imageView.tintColor = .red
            flag = false
        } else {
            lableForward.text = "0"
            imageView.tintColor = .gray
            flag = true
            
        }
    }
}
