import UIKit

class FriendPhotoViewController: UIViewController {

    var image: UIImage?
    @IBOutlet weak var photoimg: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        photoimg.image = image
        
    }


}
