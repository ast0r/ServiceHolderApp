//
//  ViewController.swift
//  ServiceHolderApp
//
//  Created by Pavel Ivanov on 3/21/19.
//  Copyright © 2019 Pavel Ivanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let serviceHolder = ServiceHolder()
        
        let custom = CustomModel(serviceHolder: serviceHolder)
        
    }


}

