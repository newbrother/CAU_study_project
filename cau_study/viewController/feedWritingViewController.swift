//
//  feedWritingViewController.swift
//  cau_study
//
//  Created by Davee on 2018. 2. 26..
//  Copyright © 2018년 신형재. All rights reserved.
//

import UIKit

class feedWritingViewController: UIViewController {
    
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var CategoryTextField: UITextField!
    @IBOutlet weak var contentTextView: UITextView!
    
    
    @IBAction func cancel_TouchUpInside(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func share_TouchUpInside(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
