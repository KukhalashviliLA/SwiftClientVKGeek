//
//  FriendPhotoViewController.swift
//  app-ios
//
//  Created by Admin on 14.05.2020.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

class FriendPhotoViewController: UIViewController {

    var image: UIImage?
    @IBOutlet weak var photoimg: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        photoimg.image = image
        
    }
    

    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
