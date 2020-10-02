//
//  FirstViewController.swift
//  WeFixAm
//
//  Created by MacMini on 30/07/2020.
//  Copyright © 2020 DCLM. All rights reserved.
//

import UIKit
import SideMenu

class FirstViewController: UIViewController, TableClicked {
    
    private let profile = ProfileViewController()
    private var sidemenu:SideMenuNavigationController?
    private var menuItem = [" ", "Recieve Dollar in USA", "About Us", "Borrow", "Contact"]
    private var imageItem = [" ", "creditcard.fill", "person.circle.fill", "number", "phone.circle.fill"]

    override func viewDidLoad() {
        super.viewDidLoad()
        let menu = MenuViewController(menu: menuItem, image: imageItem )
        menu.delegate = self
        sidemenu = SideMenuNavigationController(rootViewController: menu)
        sidemenu?.leftSide = true
        sidemenu?.alwaysAnimate = true
        SideMenuManager.default.leftMenuNavigationController = sidemenu
        SideMenuManager.default.addPanGestureToPresent(toView: view)
        // Do any additional setup after loading the view.
        //addChild()
    }
    
    
    func addChild() {
        addChild(self.profile)
        view.addSubview(profile.view)
        profile.view.frame = view.bounds
        profile.didMove(toParent: self)
        profile.view.isHidden = true
    }
    @IBAction func menuTap(){
        present(sidemenu!, animated: true)
    }
    
    @IBAction func bussiness(_ sender: UIButton){
        let id = sender.tag
        let stoaryboard = UIStoryboard(name: "Main", bundle: nil)
        let mainVc = stoaryboard.instantiateViewController(identifier: "second") as! SecondViewController
        switch id {
        case 1:
            mainVc.body = NSLocalizedString("bussiness", comment: "")
            mainVc.top = NSLocalizedString("small_business_nloan", comment: "")
            break
        case 2:
             mainVc.body = NSLocalizedString("fly", comment: "")
            mainVc.top = NSLocalizedString("fly_nown_bill_me_later", comment: "")
            break
        case 3:
            mainVc.body = NSLocalizedString("school", comment: "")
            mainVc.top = NSLocalizedString("back_to_nschool", comment: "")
            break
        case 4:
            mainVc.body = NSLocalizedString("rent", comment: "")
            mainVc.top = NSLocalizedString("pay_my_nrent", comment: "")
            break
        case 5:
           mainVc.body = NSLocalizedString("consumer", comment: "")
            mainVc.top = NSLocalizedString("consumer_nswift_lease", comment: "")
            break
        case 6:
            mainVc.body = NSLocalizedString("salary", comment: "")
            mainVc.top = NSLocalizedString("salary_nadvance", comment: "")
            break
        default:
            print("default")
        }
      self.navigationController?.pushViewController(mainVc, animated: true)
    }
    

    func click(name: String) {
        sidemenu?.dismiss(animated: true, completion: {[weak self]
            in
            switch name{
            case self!.menuItem[1]:
                let stoaryboard = UIStoryboard(name: "Main", bundle: nil)
                let mainVc = stoaryboard.instantiateViewController(identifier: "second") as! SecondViewController
                mainVc.body = NSLocalizedString("dollar", comment: "")
                mainVc.top = NSLocalizedString("send_naira_receive_ndollar_in_usa", comment: "")
                self?.navigationController?.pushViewController(mainVc, animated: true)
            case self!.menuItem[2]:
                 let stoaryboard = UIStoryboard(name: "Main", bundle: nil)
                let mainVc = stoaryboard.instantiateViewController(identifier: "about") as! AboutViewController
            self?.navigationController?.pushViewController(mainVc, animated: true)
                case self!.menuItem[3]:
                    let stoaryboard = UIStoryboard(name: "Main", bundle: nil)
                    let mainVc = stoaryboard.instantiateViewController(identifier: "about") as! AboutViewController
                    self?.navigationController?.pushViewController(mainVc, animated: true)
                case self!.menuItem[4]:
                     let stoaryboard = UIStoryboard(name: "Main", bundle: nil)
                    let mainVc = stoaryboard.instantiateViewController(identifier: "how") as! HowViewController
                self?.navigationController?.pushViewController(mainVc, animated: true)
            default:
                print("default")
            }
           
        })
        
    }
}

