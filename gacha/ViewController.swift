//
//  ViewController.swift
//  gacha
//
//  Created by 八森聖人 on 2022/05/12.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func gacha(_ sender: UIButton) {
        self.performSegue(withIdentifier: "result", sender: nil)
    }
}

