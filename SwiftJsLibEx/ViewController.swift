//
//  ViewController.swift
//  SwiftJsLibEx
//
//  Created by MA-15 on 19/12/22.
//

import UIKit
import SwiftJSLib

class ViewController: UIViewController {

    var obj = WebkitClass()
    override func viewDidLoad() {
        super.viewDidLoad()
        obj.configureWebview(view: self.view)
        // Do any additional setup after loading the view.
    }
}

