//
//  MenuViewController.swift
//  WeFixAm
//
//  Created by MacMini on 31/07/2020.
//  Copyright © 2020 DCLM. All rights reserved.
//

import UIKit

class MenuViewController: UITableViewController {
    
    
    
    private let menu:[String]
    private let image:[String]
    let col = UIColor(red: 34/255, green: 34/255, blue: 34/255, alpha: 1)
 
    var delegate:TableClicked?
    
    init(menu: [String], image: [String]) {
        self.menu = menu
        self.image = image
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.backgroundColor = col
        view.backgroundColor = col
        // Do any additional setup after loading the view.
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        delegate?.click(name: menu[indexPath.row])
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menu.count
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        if indexPath.row == 0 {
            cell.imageView?.image = UIImage(named: "main_logo")
             cell.textLabel?.isHidden = true
            cell.backgroundColor = .clear
        } else{
            cell.textLabel?.text = menu[indexPath.row]
                  cell.textLabel?.textColor = .white
            cell.imageView?.image = UIImage(systemName: image[indexPath.row])
            cell.imageView?.tintColor = .white
            cell.backgroundColor = .clear
        }
      
        return cell
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

protocol TableClicked {
    func click(name: String)
}
