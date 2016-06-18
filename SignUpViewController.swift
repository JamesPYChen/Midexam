//
//  SignUpViewController.swift
//  MovieExam
//
//  Created by jamespoyu on 2016/6/18.
//  Copyright © 2016年 AlphaCamp. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    var namearray:[String] = []
    @IBOutlet weak var tableView: UITableView!

    @IBOutlet weak var TextField: UITextField!
    
    @IBAction func SignUpButton(sender: UIButton) {
       let signUpString = TextField.text
       TextField.text = ""
        if signUpString == ""{
            let alert = UIAlertController(title: " name should not be empty", message: nil, preferredStyle: .Alert)
           alert.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
           self.presentViewController(alert, animated: true,completion:nil)
        } else if namearray.count < 3{
          namearray.append(signUpString!)
          tableView.reloadData()

        } else if namearray.count == 3 {
            let alert1 = UIAlertController(title: " only allow three signiture", message: nil, preferredStyle: .Alert)
            alert1.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
            self.presentViewController(alert1, animated: true,completion:nil)
            
        }
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableViewAutomaticDimension


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return namearray.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("nameCell", forIndexPath: indexPath)
        cell.textLabel?.text = namearray[indexPath.row]
        return cell
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
