//
//  ViewController.swift
//  imageView
//
//  Created by D7703_28 on 2018. 4. 2..
//  Copyright © 2018년 YDuChoi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count = 1;
    var direction = 1;
    @IBOutlet weak var myimageview: UIImageView!
    @IBOutlet weak var index: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myimageview.image = UIImage(named: "frame1.jpg")
        index.text = "1"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func imageUpdate(_ sender: Any) {
        if count == 5  {
            direction = 0
            
        }else if count == 1{
            direction = 1
        }
        if direction == 1{
            count += 1;}
        
    else if direction == 0{
            count = count - 1
    }
        myimageview.image = UIImage(named: "frame\(count).jpg")
        index.text = String(count)
    }

}
