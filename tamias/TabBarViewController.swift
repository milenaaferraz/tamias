//
//  TabBarViewController.swift
//  tamias
//
//  Created by Ana Flávia Nascimento Godoy on 11/28/17.
//  Copyright © 2017 Milena Almeida Ferraz. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {
    
    var contadorTabBar = 0
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
       //  myLabel.text = "Count \(count)"
        contadorTabBar += 1
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
