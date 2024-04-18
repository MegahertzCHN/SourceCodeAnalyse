//
//  ViewController.swift
//  Test-Swift-Dispatch
//
//  Created by Chill on 2024/4/15.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let test = TestProtocol()
        test.test1()
        
        SVG().render()
    }


}

