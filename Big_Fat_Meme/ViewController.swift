//
//  ViewController.swift
//  Big_Fat_Meme
//
//  Created by Hunter James Metts on 1/19/19.
//  Copyright © 2019 Hunter James Metts. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let memeArray = ["gif1","gif2","gif3","gif4","gif5","gif6","gif7","gif8","gif9","gif10","gif11"]
    
    var randomMemeIndex1: Int = 0


    @IBOutlet weak var memeImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func memeButtonPressed(_ sender: UIButton) {
        randomMemeIndex1 = Int(arc4random_uniform(11))
        
        memeImageView.image = UIImage(named: memeArray[randomMemeIndex1])
    }
    
}

