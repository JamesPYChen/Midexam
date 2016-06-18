//
//  ShowMovieDetailViewController.swift
//  MovieExam
//
//  Created by jamespoyu on 2016/6/18.
//  Copyright © 2016年 AlphaCamp. All rights reserved.
//

import UIKit

class ShowMovieDetailViewController: UIViewController,UIScrollViewDelegate {

    @IBOutlet weak var MovieDetail: UILabel!
    @IBOutlet weak var ShowImage: UIImageView!
    
    var ImageName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ShowImage.image = UIImage(named: ImageName!)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
