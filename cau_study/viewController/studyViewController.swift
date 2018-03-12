//
//  studyViewController.swift
//  cau_study
//
//  Created by 신형재 on 2018. 2. 12..
//  Copyright © 2018년 신형재. All rights reserved.
//

import UIKit

class studyViewController: UIViewController {

    @IBOutlet weak var backgroundImg: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var index = 0
    var imageFileName = ""
    var content = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImg.image = UIImage(named: imageFileName)
        
        pageControl.currentPage = index
        switch index {
        case 0...1:
            forwardBtn.setImage(UIImage(named: "arrow.png"), for: UIControlState.normal)
        case 2:
            forwardBtn.setImage(UIImage(named: "doneIcon.png"), for: UIControlState.normal)
        default:
            break
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextBtn_TouchUpInside(_ sender: Any) {
        switch index {
        case 0...1:
            let pageVC = parent as! WalkthroughViewController
            pageVC.forward(index: index)
        case 2:
            
            let defaults = UserDefaults.standard
            defaults.set(true, forKey: "hasViewedWalkthrough")
            
            dismiss(animated: true, completion: nil)
        default:
            print("")
        }
    }

}
