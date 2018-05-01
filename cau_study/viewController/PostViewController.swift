//
//  PostViewController.swift
//  cau_study
//
//  Created by CAUADC on 2018. 3. 5..
//  Copyright © 2018년 신형재. All rights reserved.
//

import UIKit

class PostViewController: UIViewController {

    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var post: UITextView!
    @IBOutlet weak var shareButton: UIButton!
    var selectedImage: UIImage?
    override func viewDidLoad() {
        super.viewDidLoad()

        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.handleSelectPhoto))
        photo.addGestureRecognizer(tapGesture)
        photo.isUserInteractionEnabled = true
        // Do any additional setup after loading the view.
    }
    
    @objc func handleSelectPhoto() {
        let pickerController = UIImagePickerController()
        pickerController.delegate = self
        present(pickerController, animated: true, completion: nil)
    }

    @IBAction func shareButton_TouchUpInside(_ sender: Any) {
    }

}

extension PostViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        print("ddd")
        if let image = info["UIImagePickerControllerOriginalImage"] as? UIImage{
            selectedImage = image
            photo.image = image
        }
        dismiss(animated: true, completion: nil)
    }
}
