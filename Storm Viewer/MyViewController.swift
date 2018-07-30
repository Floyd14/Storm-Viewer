//
//  ViewController.swift
//  Storm Viewer
//
//  Created by Andrea Visini on 18/07/18.
//  Copyright © 2018 Andrea Visini. All rights reserved.
//

import UIKit

class MyViewController: UIViewController {

    @IBOutlet var myView: MyView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("T") {
                let image = UIImage(named: item)
                
                print(image)
            }
        }
    }
    
    
}

