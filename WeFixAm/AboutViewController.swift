//
//  AboutViewController.swift
//  WeFixAm
//
//  Created by MacMini on 31/07/2020.
//  Copyright © 2020 DCLM. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {
 @IBOutlet weak var midLabel: UILabel!
 
    let word = NSLocalizedString("about", comment: "" ) 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        midLabel.text = word
       

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
