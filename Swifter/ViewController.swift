//
//  ViewController.swift
//  Swifter
//
//  Created by Ivan Bogdanov on 11/4/16.
//  Copyright © 2016 Salesforce. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var SwiftLabel: UILabel!
// MARK: Properties
    @IBOutlet weak var ObjCLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.blue;
        SwiftLabel.text = MSDK.hello();
        ObjCLabel.text = Super().sayHello();
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

