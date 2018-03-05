//
//  PostViewController.swift
//  cau_study
//
//  Created by CAUADC on 2018. 3. 5..
//  Copyright © 2018년 신형재. All rights reserved.
//

import UIKit

class PostViewController: UIViewController {

    @IBOutlet weak var post: UITextView!
    @IBOutlet weak var shareButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func shareButton_TouchUpInside(_ sender: Any) {
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
