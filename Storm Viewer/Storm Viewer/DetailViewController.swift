//
//  DetailViewController.swift
//  Storm Viewer
//
//  Created by Apoorv Joshi on 14/08/22.
//

import UIKit

class DetailViewController : UIViewController{
    
    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?
    var pictureIndex: (pictureIndex: Int, totalPictures: Int)? //challenge3
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
       //challenge3
        guard let pictureIndex = pictureIndex else {
                    print("No position provided")
                    return
                }
        title = "Image \(pictureIndex.pictureIndex) of \(pictureIndex.totalPictures)"
        if let imageToLoad = selectedImage {
            imageView.image  = UIImage(named: imageToLoad)
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }

}
