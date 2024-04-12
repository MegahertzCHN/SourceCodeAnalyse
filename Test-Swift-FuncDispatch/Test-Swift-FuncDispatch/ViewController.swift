//
//  ViewController.swift
//  Test-Swift-FuncDispatch
//
//  Created by Chill on 2024/4/12.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let cl1 = AClass()
        cl1.test1()
        cl1.test2()
        
        let cl2 = BClass()
        cl2.test2()
        cl2.test3()
    }


}

