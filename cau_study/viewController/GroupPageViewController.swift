//
//  GroupPageViewController.swift
//  cau_study
//
//  Created by 강호현 on 2018. 2. 26..
//  Copyright © 2018년 신형재. All rights reserved.
//

import UIKit

class GroupPageViewController: UIPageViewController, UIPageViewControllerDataSource {
    
    var pageContent = ["test1","test2","test3"]
    var pageImage = ["Unknown","Unknown12","toktok_art_-1"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        var index = (viewController as! studyViewController).index
        index += 1
        return viewControllerAtindex(index: index)
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
