//
//  TabBarViewController.swift
//  ShorecrestMaps
//
//  Created by Kalju Jake Nekvasil on 10/19/17.
//  Copyright © 2017 Kalju Jake Nekvasil. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let deepGreenColor = UIColor(red: 4.0/255, green: 64.0/255, blue: 42.0/255, alpha: 1.0)
        let dullYellowColor = UIColor(red: 255.0/255, green: 248.0/255, blue: 223.0/255, alpha: 1.0)
        self.tabBar.barTintColor = deepGreenColor
        self.tabBar.tintColor = dullYellowColor
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
