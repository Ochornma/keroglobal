//
//  SecondViewController.swift
//  WeFixAm
//
//  Created by MacMini on 30/07/2020.
//  Copyright © 2020 DCLM. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var top: String = ""
    var body: String = ""
    @IBOutlet weak var topLabel:UILabel!
    @IBOutlet weak var bodyLabel:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        topLabel.text = top
        bodyLabel.text = body
    }


}

